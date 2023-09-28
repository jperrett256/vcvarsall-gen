@echo off
setlocal
rem NOTE comment/uncomment for 32/64 bit
rem call "%~dp0_vcvarsall32.bat"
call "%~dp0_vcvarsall64.bat"
call "clang++.exe" %*
