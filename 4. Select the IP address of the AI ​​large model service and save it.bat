@echo off
chcp 65001
setlocal EnableDelayedExpansion

set /p IP=<.\IP.txt

echo 上次的 IP 是 %IP%
echo.
echo.
set /a count=1
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /I "IPv4" ^| findstr /E [0-9]') do (
    echo !count!. %%a
    set ip[!count!]=%%a
    set /a count+=1
)

set /p choice=请选择你网卡局域网的IP地址（输入对应数字）：
set IP=!ip[%choice%]!

echo 选择的IP地址是：%IP%

echo %IP% > IP.txt

echo "IP 切换完毕，回车退出"

pause