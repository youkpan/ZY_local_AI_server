@echo off
chcp 65001

:menu
echo.
echo.
echo.
echo "请选择您需要的服务端适配类型："
echo.
echo "1. 适配所有GPU加速   (server-all-gpu.exe)"
echo.
echo 2. 特别适配英伟达GPU 12.2（更快 更新版本） (server-nvidia-gpu-cuda12.2.exe)
echo.
echo 3. 特别适配英伟达GPU 11.7（更快） (server-nvidia-gpu-cuda11.7.exe)
echo.
echo 4. 适配CPU (server-cpu.exe)
echo.
echo.
echo.
set /p choice=请输入选项编号（1-4）并按回车键（GPU加速 需要2G以上显存）：

if "%choice%"=="1" set file=server-all-gpu.exe
if "%choice%"=="2" set file=server-nvidia-gpu-cuda12.2.exe
if "%choice%"=="3" set file=server-nvidia-gpu-cuda11.7.exe
if "%choice%"=="4" set file=server-cpu.exe

if not defined file goto menu

copy /Y .\AI_servers\%file% .\AI_servers\server.exe >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo 复制文件失败，请确保没有其他程序正在使用 server.exe 文件。
    echo 请关闭正在运行的服务端，然后重试。
    pause
    goto menu
)

echo 文件已成功复制为 server.exe

echo 重新启动 3.启动本地AI.bat
call "3.启动本地AI.bat"

pause