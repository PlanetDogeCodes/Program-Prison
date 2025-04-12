@echo off
setlocal

set "processName=inserthere.exe"
set "pauseDuration=60" REM Duration in seconds to release program from prison

:menu
cls
echo ==========================
echo Program Prison
echo ==========================
echo 1. Imprison your specified .exe program
echo 2. Release your specified .exe program
echo 3. Exit this file
echo ==========================
set /p choice="Choose an option (1-3): "

if "%choice%"=="1" (
echo Imprisoned %processName%...
:killLoop
taskkill /f /im %processName%
timeout /t 1 >nul
goto killLoop
) else if "%choice%"=="2" (
echo Program resumed for 1 minute...
timeout /t %pauseDuration% >nul
echo Program imprisoned...
goto menu
) else if "%choice%"=="3" (
exit
) else (
echo Buddy the options are 1-3 not anything else
timeout /t 2 >nul
goto menu
)

endlocal