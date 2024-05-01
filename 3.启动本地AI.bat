
@echo off
chcp 65001
setlocal EnableDelayedExpansion

set docker="C:\Program Files\Docker\Docker\Docker Desktop.exe"
IF EXIST %docker% ( call %docker% ) ELSE ( echo %docker% 文件不存在 )
echo.
echo.
echo "请打开 Docker Desktop  查看Docker引擎是否启动完成。"


echo.
set /p IP=<.\IP.txt

echo 选择的AI模型服务IP地址是：%IP%

echo.
echo "请确认AI服务 Docker 启动完毕，再请点击此屏幕，激活窗口，回车继续"
echo.

pause

start https://ai.zyinfo.pro/wf?from=local_ai

start .\AI_servers\server.exe -m zy-llm-model-desktop.bin --port 7900 -c 4096 --chat-template zymodel --host %IP%
echo. 
echo OPENAI 兼容的接口 请填写：http://%IP%:7900/v1
echo. 
timeout /t 3 >nul

start http://127.0.0.1

timeout /t 400 >nul
start https://ai.zyinfo.pro/?from=local_ai

rem for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /I "IPv4" ^| findstr /E [0-9]') do (
rem    start %%a
rem )
pause
pause