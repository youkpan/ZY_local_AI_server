cd AI_web
cd docker

@echo off
chcp 65001
setlocal EnableDelayedExpansion
echo.
echo "Please open Docker Desktop to check whether the Docker engine has started. Please press Enter to continue."
echo.
echo "You may need an external network environment. Contact us for remote service: WeChat youkpan. Email: tel_pan@126.com"
echo.
echo If the download fails, you can query the relevant Docker domestic mirror source configuration information.
echo.


set docker="C:\Program Files\Docker\Docker\Docker Desktop.exe"
IF EXIST %docker% ( call %docker% ) ELSE ( echo %docker% Docker desktop not exist )


pause

docker-compose up


pause