@echo off
chcp 65001
setlocal EnableDelayedExpansion

set /p IP=<.\IP.txt

echo last IP is %IP%
echo.
echo.
set /a count=1
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /I "IPv4" ^| findstr /E [0-9]') do (
    echo !count!. %%a
    set ip[!count!]=%%a
    set /a count+=1
)

set /p choice=Please select the IP address of your network card LAN (enter the corresponding number):
set IP=!ip[%choice%]!

echo The selected IP address is: %IP%

echo %IP% > IP.txt

echo "IP switching completed, press Enter to exit"

pause