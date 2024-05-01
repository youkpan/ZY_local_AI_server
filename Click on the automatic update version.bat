chcp 65001
@echo off

curl -s http://zyinfo.pro/files/local_ai/version.txt > remote_version.txt

fc version.txt remote_version.txt > nul
echo %errorlevel%
if errorlevel 1 (
echo versions are inconsistent, continue with the following operation
) else (
echo versions are consistent, no need to update
pause
exit
)

curl -o latest_update.zip http://zyinfo.pro/files/local_ai/latest_update.zip

.\tools\unzip.exe -o latest_update.zip -d .

copy /Y remote_version.txt version.txt >nul 2>&1

echo automatic update completed

pause