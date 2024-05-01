@echo off
chcp 65001
setlocal EnableDelayedExpansion

echo "Please open Docker Desktop to check whether the Docker engine has started. Whether the AI ​​service has started, please press Enter to continue"
pause

set /p IP=<.\IP.txt

echo The selected AI model service IP address is: %IP%

rem start https://ai.zyinfo.pro/wf?from=local_ai

start .\AI_servers\server.exe -m zy-llm-model-desktop.bin --port 7901 -c 4096 --chat-template zymodel --embedding --host %IP%
echo
echo OPENAI compatible retrieval service encoding interface Please fill in: http://%IP%:7901/v1
echo
timeout /t 3 >nul
start http://127.0.0.1

timeout /t 300 >nul
rem start https://ai.zyinfo.pro/?from=local_ai

pause