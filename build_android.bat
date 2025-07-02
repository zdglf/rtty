@echo off
set NDK=D:\androidsdk\Sdk\ndk\21.1.6352462
set CMAKE=D:\androidsdk\Sdk\cmake\3.22.1\bin\cmake.exe
set NINJA=D:\androidsdk\Sdk\cmake\3.22.1\bin\ninja.exe
mkdir build
cd build
%CMAKE% -DCMAKE_TOOLCHAIN_FILE=%NDK%\build\cmake\android.toolchain.cmake -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-23 -DCMAKE_MAKE_PROGRAM=%NINJA% -DCMAKE_BUILD_TYPE=Release -DANDROID_NDK=%NDK% -DCMAKE_GENERATOR=Ninja ..
%NINJA%

pause