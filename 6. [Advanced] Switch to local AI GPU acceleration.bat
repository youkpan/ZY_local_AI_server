@echo off
chcp 65001

:menu
echo.
echo.
echo.
echo "Please select the server adaptation type you need:"
echo.
echo "1. Adapt to all GPU acceleration (server-all-gpu.exe)"
echo.
echo 2. Specially adapted to NVIDIA GPU 12.2 (faster and updated version) (server-nvidia-gpu-cuda12.2.exe)
echo.
echo 3. Specially adapted to NVIDIA GPU 11.7 (faster) (server-nvidia-gpu-cuda11.7.exe)
echo.
echo 4. Adapt to CPU (server-cpu.exe)
echo.
echo.
echo.
set /p choice=Please enter the option number (1-4) and press Enter (GPU acceleration requires more than 2G video memory):

if "%choice%"=="1" set file=server-all-gpu.exe
if "%choice%"=="2" set file=server-nvidia-gpu-cuda12.2.exe
if "%choice%"=="3" set file=server-nvidia-gpu-cuda11.7.exe
if "%choice%"=="4" set file=server-cpu.exe

if not defined file goto menu

copy /Y .\AI_servers\%file% .\AI_servers\server.exe >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
echo Failed to copy the file. Please make sure that no other program is using the server.exe file.
echo Please close the running server and try again.
pause
goto menu
)

echo The file has been successfully copied to server.exe

echo Restart 3. Start local AI.bat
call "3. Start local AI.bat"

pause