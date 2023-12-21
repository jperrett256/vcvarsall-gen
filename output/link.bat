@echo off
setlocal
rem NOTE comment/uncomment for 32/64 bit
rem call "%~dp0_vcvarsall32.bat"
call "%~dp0_vcvarsall64.bat"

rem NOTE removes directory of executables that call these bat files
rem (substring needs to match exactly, modify as needed)
set PATH=%PATH:C:\Utilities\bat_callers;=%
call "link.exe" %*
