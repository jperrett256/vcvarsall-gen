@echo off
set CommandPromptType=Native
set DevEnvDir=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\
set ExtensionSdkDir=C:\Program Files (x86)\Microsoft SDKs\Windows Kits\10\ExtensionSDKs
set Framework40Version=v4.0
set FrameworkDir=C:\Windows\Microsoft.NET\Framework\
set FrameworkDir32=C:\Windows\Microsoft.NET\Framework\
set FrameworkVersion=v4.0.30319
set FrameworkVersion32=v4.0.30319
set INCLUDE=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\ATLMFC\include;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\include;C:\Program Files (x86)\Windows Kits\10\include\10.0.19041.0\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\shared;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\um;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.19041.0\\cppwinrt
set LIB=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\ATLMFC\lib\x86;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\lib\x86;C:\Program Files (x86)\Windows Kits\10\lib\10.0.19041.0\ucrt\x86;C:\Program Files (x86)\Windows Kits\10\\lib\10.0.19041.0\\um\x86
set LIBPATH=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\ATLMFC\lib\x86;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\lib\x86;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\lib\x86\store\references;C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.19041.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.19041.0;C:\Windows\Microsoft.NET\Framework\v4.0.30319
set PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\bin\HostX86\x86;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\VCPackages;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer;C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\bin\Roslyn;C:\Program Files\Microsoft Visual Studio\2022\Community\Team Tools\Performance Tools;C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\\x86;C:\Program Files (x86)\Windows Kits\10\bin\\x86;C:\Program Files\Microsoft Visual Studio\2022\Community\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework\v4.0.30319;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\;%PATH%;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\Linux\bin\ConnectionManagerExe
set Platform=x86
set UCRTVersion=10.0.19041.0
set UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\
set VCIDEInstallDir=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\VC\
set VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\
set VCToolsInstallDir=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.32.31326\
set VCToolsRedistDir=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Redist\MSVC\14.32.31326\
set VCToolsVersion=14.32.31326
set VisualStudioVersion=17.0
set VS170COMNTOOLS=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\
set VSCMD_ARG_app_plat=Desktop
set VSCMD_ARG_HOST_ARCH=x86
set VSCMD_ARG_TGT_ARCH=x86
set VSCMD_VER=17.2.6
set VSINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\
set WindowsLibPath=C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.19041.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.19041.0
set WindowsSdkBinPath=C:\Program Files (x86)\Windows Kits\10\bin\
set WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
set WindowsSDKLibVersion=10.0.19041.0\
set WindowsSdkVerBinPath=C:\Program Files (x86)\Windows Kits\10\bin\10.0.19041.0\
set WindowsSDKVersion=10.0.19041.0\
set __DOTNET_ADD_32BIT=1
set __DOTNET_PREFERRED_BITNESS=32
set __VSCMD_PREINIT_PATH=C:\Program Files\Microsoft\jdk-11.0.12.7-hotspot\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\OpenSSH-Win64;C:\Windows\System32\OpenSSH\;C:\Program Files\dotnet\;C:\Program Files\Neovim\bin;C:\Users\Joshua\AppData\Local\Microsoft\WindowsApps;C:\msys64\mingw64\bin;C:\msys64\usr\bin;C:\ProgramData\chocolatey\bin;C:\Program Files\Git\cmd;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build;C:\msvc;C:\msvc\bat_callers;C:\Program Files\Calibre2\;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\NASM\;C:\Users\Joshua\miniforge3\condabin;D:\Downloads\Utilities\youtube-dl;D:\Downloads\Utilities\ffmpeg\bin;D:\Downloads\Utilities\wget;D:\Downloads\Utilities\youtube-dl
