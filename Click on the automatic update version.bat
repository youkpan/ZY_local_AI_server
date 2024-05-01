chcp 65001
@echo off

curl -s http://zyinfo.pro/files/local_ai/version.txt > remote_version.txt

fc version.txt remote_version.txt > nul
echo %errorlevel%
if errorlevel 1 (
    echo 版本不一致，继续后面操作
) else (
    echo 版本一致，无需更新
    pause
    exit
)

curl -o latest_update.zip http://zyinfo.pro/files/local_ai/latest_update.zip

.\tools\unzip.exe  -o latest_update.zip  -d .

copy /Y remote_version.txt version.txt >nul 2>&1

echo 自动更新完成

pause