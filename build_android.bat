@echo off
set NDK=D:\AndroidSDK\ndk\25.2.9519653
set CMAKE=D:\AndroidSDK\cmake\3.22.1\bin\cmake.exe
set NINJA=D:\AndroidSDK\cmake\3.22.1\bin\ninja.exe
mkdir build
cd build
%CMAKE% -DCMAKE_TOOLCHAIN_FILE=%NDK%\build\cmake\android.toolchain.cmake -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-23 -DCMAKE_MAKE_PROGRAM=%NINJA% -DCMAKE_BUILD_TYPE=Release -DANDROID_NDK=%NDK% -DCMAKE_GENERATOR=Ninja ..
%NINJA%

pause