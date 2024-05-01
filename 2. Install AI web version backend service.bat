cd AI_web
cd docker

@echo off
chcp 65001
setlocal EnableDelayedExpansion
echo.
echo "请打开 Docker Desktop  查看Docker引擎是否启动完成。确认请回车继续。"
echo.
echo "可能需要外网环境。联系我们 远程提供服务：微信 youkpan 。 email: tel_pan@126.com"
echo.
echo  若下载失败， 可查询相关 Docker 国内镜像源配置信息。
echo.


set docker="C:\Program Files\Docker\Docker\Docker Desktop.exe"
IF EXIST %docker% ( call %docker% ) ELSE ( echo %docker% 文件不存在 )


pause

docker-compose up


pause