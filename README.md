# cl.bat generation

## Idea

Calling `cl.exe` from command line requires multiple envionment variables to be set correctly, which is what `vcvarsall.bat` is for.
However, calling `vcvarsall.bat` all the time is messy and tedious.

A solution to this is to create a file called `cl.bat` (with containing directory added to environment path) that calls `vcvarsall.bat` and then `cl.exe`, all within a localised environment.

Unfortunately, `vcvarsall.bat` has the added disadvantage of being slow (particularly noticeable when called every time `cl.exe` is to be called). What `cl_gen.py` does is create a `.bat` file that directly sets the environment variables that `vcvarsall.bat` would and runs `cl.exe`. This `.bat` file is significantly faster.

## Usage

Expects `vcvarsall.bat` to be available on path. (Can alternatively modify the script very easily.)

Takes the target architecture of the `cl.exe` we wish to call as an argument.
Also optionally takes the name/path of the file to write to (default is `cl.bat`).

```bash
python cl_gen.py x86 -o cl32.bat
```
