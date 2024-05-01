
@echo off
chcp 65001
setlocal EnableDelayedExpansion

set docker="C:\Program Files\Docker\Docker\Docker Desktop.exe"
IF EXIST %docker% ( call %docker% ) ELSE ( echo %docker% 文件不存在 )
echo.
echo.
echo "Please open Docker Desktop to check whether the Docker engine has been started."

echo.
set /p IP=<.\IP.txt

echo The selected AI model service IP address is: %IP%

echo.
echo "Please confirm that the AI ​​service Docker has been started, then click this screen to activate the window and press Enter to continue"

echo.

pause

start https://ai.zyinfo.pro/wf?from=local_ai

start .\AI_servers\server.exe -m zy-llm-model-desktop.bin --port 7900 -c 4096 --chat-template zymodel --host %IP%
echo. 
echo OPENAI compatible interface Please fill in: http://%IP%:7900/v1
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