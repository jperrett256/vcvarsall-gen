import os
import argparse
from subprocess import Popen, PIPE

parser = argparse.ArgumentParser(description='Generate fast cl.bat file.')
parser.add_argument('arch', choices=['x86', 'amd64'])
parser.add_argument('--output', '-o', action='store', dest='output', default='cl.bat')

args = parser.parse_args()


with Popen('set', stdout=PIPE, shell=True) as proc:
	stdout_data, stderr_data = proc.communicate()
	assert(not stderr_data)
	vars_initial = stdout_data.decode('utf-8')

with Popen('vcvarsall {} && set'.format(args.arch), stdout=PIPE, shell=True) as proc:
	stdout_data, stderr_data = proc.communicate()
	assert(not stderr_data)
	vars_final = stdout_data.decode('utf-8')

vars_initial = vars_initial.strip().split('\n')
vars_final = vars_final.strip().split('\n')

vars_initial = list(map(lambda x: x.strip(), vars_initial))
vars_final = list(map(lambda x: x.strip(), vars_final))

# skip over vcvarsall output
start = 0
while True:
	if '=' in vars_final[start]:
		break
	start += 1

vars_final = vars_final[start:]


# assumes vars are sorted, and have more afterwards
assert(len(vars_initial) < len(vars_final))

vars_added = []
new_path = None

i = 0
j = 0

# look for added vars
while i < len(vars_initial) and j < len(vars_final):
	# print(vars_initial[i]) # DEBUG
	# print(vars_final[j]) # DEBUG

	# skip over vars already present
	if vars_initial[i] == vars_final[j]:
		i += 1
		j += 1
	else:
		var_a = vars_initial[i].split('=')
		var_b = vars_final[j].split('=')

		assert(len(var_a) == 2)
		assert(len(var_b) == 2)

		key_a = var_a[0]
		key_b = var_b[0]

		# only variable modified should be PATH
		if key_a == key_b:
			assert(key_a.upper() == 'PATH')
			assert(new_path == None)

			# can assume changes are prepended/appended to path string
			value_a = var_a[1]
			value_b = var_b[1]

			assert(len(value_a) < len(value_b))
			assert(value_a in value_b)
			# we express the new path in terms of the old path so the script
			# doesn't need to be rerun every time the user updates their path
			assert(len(value_a) > 0 and value_a[-1] != ';')
			new_path = value_b.replace(value_a, '%PATH%')
			assert('%PATH%' in new_path)
			vars_added.append('PATH=' + new_path)

			i += 1
			j += 1

		else: # save added vars
			vars_added.append(vars_final[j])
			j += 1

# final vars should contain all of the initial vars
assert(i == len(vars_initial))

# get rest of added vars
while j < len(vars_final):
	vars_added.append(vars_final[j])
	j += 1

# check vcvarsall did something
assert(len(vars_added) > 0 and new_path)

# save to batch file
assert(not os.path.isfile(args.output))

with open(args.output, 'w') as f:
	f.write('@echo off\n')
	f.write('setlocal\n')
	for var in vars_added:
		f.write('set {}\n'.format(var))
	f.write('call "cl.exe" %*\n')
