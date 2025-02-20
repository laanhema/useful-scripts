:: A script that changes permissions of a file / folder similar to chmod 400 on linux
echo off
set arg1=%1
icacls.exe %arg1% /reset
icacls.exe %arg1% /grant:r %USERNAME%:(r)
icacls.exe %arg1% /inheritance:r