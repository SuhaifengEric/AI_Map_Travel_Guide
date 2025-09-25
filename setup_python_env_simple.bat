@echo off
chcp 65001 >nul

echo ================================
echo Python Environment Setup Tool
echo ================================
echo.

:: Set Python installation paths
set "PYTHON_PATH=C:\Users\96403\AppData\Local\Programs\Python\Python313"
set "SCRIPTS_PATH=C:\Users\96403\AppData\Local\Programs\Python\Python313\Scripts"

:: Check if paths exist
if not exist "%PYTHON_PATH%" (
    echo ERROR: Python installation path not found: %PYTHON_PATH%
    pause
    exit /b 1
)

if not exist "%SCRIPTS_PATH%" (
    echo WARNING: Python Scripts path not found: %SCRIPTS_PATH%
    echo.
)

:: Check if Python is already in PATH
echo Checking current PATH configuration...
path | find /i "%PYTHON_PATH%" >nul
if %errorlevel% equ 0 (
    echo Python path is already in system PATH
) else (
    echo Adding Python paths to system PATH...
    setx PATH "%%PATH%%;%PYTHON_PATH%;%SCRIPTS_PATH%" /m >nul
    if %errorlevel% equ 0 (
        echo Successfully added Python paths to system PATH
    ) else (
        echo ERROR: Please run this script as Administrator
        pause
        exit /b 1
    )
)

echo.
echo ================================
echo Setup Complete
echo ================================
echo.
echo Please restart your command prompt for changes to take effect
echo.
echo Verification commands:
echo python --version
echo pip --version
echo.
pause