
@echo off
chcp 65001
setlocal EnableDelayedExpansion

echo "请打开 Docker Desktop  查看Docker引擎是否启动完成。AI服务是否启动完毕，确认请回车继续"
pause

set /p IP=<.\IP.txt

echo 选择的AI模型服务IP地址是：%IP%

rem start https://ai.zyinfo.pro/wf?from=local_ai

start .\AI_servers\server.exe -m zy-llm-model-desktop.bin --port 7901 -c 4096 --chat-template zymodel --embedding --host %IP% 
echo 
echo OPENAI 兼容的检索服务编码接口 请填写：http://%IP%:7901/v1
echo 
timeout /t 3 >nul
start http://127.0.0.1

timeout /t 300 >nul
rem start https://ai.zyinfo.pro/?from=local_ai

 pause