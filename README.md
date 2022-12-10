# Replacement vcvarsall.bat generation

## Idea

Calling `cl.exe` from command line requires multiple envionment variables to be set correctly, which is what `vcvarsall.bat` is for.
However, calling `vcvarsall.bat` all the time is messy and tedious.

A solution to this is to create a file called `cl.bat` (with containing directory added to environment path) that calls `vcvarsall.bat` and then `cl.exe`, all within a localised environment.

Unfortunately, `vcvarsall.bat` has the added disadvantage of being slow (particularly noticeable when called every time `cl.exe` is to be called, and unbearable when compiling projects where each source file is compiled separately). What `vcvarsall_gen.py` does is create a replacement `.bat` file that sets the environment variables that `vcvarsall.bat` would, except significantly faster. This replacement `.bat` file can then be called instead from the `cl.bat` described previously.

(A similar `link.bat` file can be created for the same purpose.)

## Usage

Expects `vcvarsall.bat` to be available on path. (Can alternatively modify the script very easily.)

Takes the target architecture and the output file path as arguments. For example:
```bash
python cl_gen.py x86 output/_vcvarsall32.bat
python cl_gen.py amd64 output/_vcvarsall64.bat
```
