@echo off
setlocal
set CommandPromptType=Native
set DevEnvDir=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\
set ExtensionSdkDir=C:\Program Files (x86)\Microsoft SDKs\Windows Kits\10\ExtensionSDKs
set Framework40Version=v4.0
set FrameworkDir=C:\Windows\Microsoft.NET\Framework64\
set FrameworkDir64=C:\Windows\Microsoft.NET\Framework64\
set FrameworkVersion=v4.0.30319
set FrameworkVersion64=v4.0.30319
set INCLUDE=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\ATLMFC\include;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\include;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\include\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\shared;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\um;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\winrt;C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\cppwinrt
set LIB=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\ATLMFC\lib\x64;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\lib\x64;C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\lib\um\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.17763.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.17763.0\um\x64;
set LIBPATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\ATLMFC\lib\x64;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\lib\x64;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\lib\x86\store\references;C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.17763.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.17763.0;C:\Windows\Microsoft.NET\Framework64\v4.0.30319;
set NETFXSDKDir=C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\
set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\HostX64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\VC\VCPackages;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\TeamFoundation\Team Explorer;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Team Tools\Performance Tools\x64;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Team Tools\Performance Tools;C:\Program Files (x86)\Microsoft Visual Studio\Shared\Common\VSPerfCollectionTools\vs2019\\x64;C:\Program Files (x86)\Microsoft Visual Studio\Shared\Common\VSPerfCollectionTools\vs2019\;C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\x64\;C:\Program Files (x86)\Windows Kits\10\bin\10.0.17763.0\x64;C:\Program Files (x86)\Windows Kits\10\bin\x64;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\\MSBuild\Current\Bin;C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\;%PATH%;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja
set Platform=x64
set UCRTVersion=10.0.17763.0
set UniversalCRTSdkDir=C:\Program Files (x86)\Windows Kits\10\
set VCIDEInstallDir=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\VC\
set VCINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\
set VCToolsInstallDir=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\
set VCToolsRedistDir=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Redist\MSVC\14.25.28508\
set VCToolsVersion=14.25.28610
set VisualStudioVersion=16.0
set VS160COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\
set VSCMD_ARG_app_plat=Desktop
set VSCMD_ARG_HOST_ARCH=x64
set VSCMD_ARG_TGT_ARCH=x64
set VSCMD_VER=16.5.4
set VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\
set WindowsLibPath=C:\Program Files (x86)\Windows Kits\10\UnionMetadata\10.0.17763.0;C:\Program Files (x86)\Windows Kits\10\References\10.0.17763.0
set WindowsSdkBinPath=C:\Program Files (x86)\Windows Kits\10\bin\
set WindowsSdkDir=C:\Program Files (x86)\Windows Kits\10\
set WindowsSDKLibVersion=10.0.17763.0\
set WindowsSdkVerBinPath=C:\Program Files (x86)\Windows Kits\10\bin\10.0.17763.0\
set WindowsSDKVersion=10.0.17763.0\
set WindowsSDK_ExecutablePath_x64=C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\x64\
set WindowsSDK_ExecutablePath_x86=C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\
set __DOTNET_ADD_64BIT=1
set __DOTNET_PREFERRED_BITNESS=64
set __VSCMD_PREINIT_PATH=C:\Program Files\Oculus\Support\oculus-runtime;C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.1\bin;C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.1\libnvvp;C:\Program Files\Haskell\bin;C:\Program Files\Haskell Platform\8.6.3\lib\extralibs\bin;C:\Program Files\Haskell Platform\8.6.3\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Program Files\NVIDIA Corporation\NVIDIA NvDLISR;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Program Files\Git\cmd;C:\Program Files\nodejs\;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\ProgramData\chocolatey\bin;C:\Program Files (x86)\Yarn\bin\;C:\MinGW\bin;C:\Program Files\Haskell Platform\8.6.3\mingw\bin;C:\Program Files\dotnet\;C:\Program Files\NVIDIA Corporation\Nsight Compute 2019.1\;C:\Program Files\Java\jdk-11.0.6\bin;C:\Program Files (x86)\GnuWin32\bin;C:\Program Files\PuTTY\;C:\Program Files (x86)\Calibre2\;C:\MinGW\msys\1.0\bin;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\WINDOWS\System32\OpenSSH\;C:\Strawberry\c\bin;C:\Strawberry\perl\site\bin;C:\Strawberry\perl\bin;C:\texlive\2020\bin\win32;C:\Program Files\Git LFS;C:\Program Files\Oracle\VirtualBox;C:\Users\Joshua\.cargo\bin;C:\Users\Joshua\AppData\Local\Programs\Python\Python38\Scripts\;C:\Users\Joshua\AppData\Local\Programs\Python\Python38\;C:\Users\Joshua\AppData\Roaming\cabal\bin;C:\Users\Joshua\AppData\Roaming\local\bin;C:\Users\Joshua\AppData\Local\Microsoft\WindowsApps;C:\Users\Joshua\AppData\Roaming\npm;D:\Downloads\Utilities\curl;D:\Downloads\Utilities\wget;C:\Users\Joshua\AppData\Local\Yarn\bin;C:\Users\Joshua\AppData\Local\hyper\app-3.0.2\resources\bin;D:\Downloads\Utilities\arduino-cli;D:\Downloads\Utilities\dnSpy-net472;C:\Users\Joshua\AppData\Local\atom\bin;C:\Users\Joshua\AppData\Local\Programs\MiKTeX 2.9\miktex\bin\x64\;C:\Users\Joshua\AppData\Local\Programs\Microsoft VS Code\bin;D:\Downloads\Utilities\ghidra_9.1.2_PUBLIC;C:\Users\Joshua\miniforge3\condabin;C:\Users\Joshua\miniforge3\Scripts;C:\Users\Joshua\miniforge3\Library;C:\Users\Joshua\miniforge3\Library\bin;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build
call "cl.exe" %*
