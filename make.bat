@echo off
where nmake
if ERRORLEVEL 1 (
    call "C:\Program Files (x86)\Microsoft Visual Studio\2017\BuildTools\vc\Auxiliary\Build\vcvars64.bat"
)
nmake SRC_DIR=lua-5.3.4\src %1
