set IP="192.168.18.223"
start .\AI_servers\server.exe -m zy-llm-model-desktop.bin --port 7900 -c 4096 --chat-template zymodel --host %IP%