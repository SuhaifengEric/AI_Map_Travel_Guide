@echo off
chcp 65001 >nul

echo ========================================
echo Python环境变量配置工具
echo ========================================
echo.

:: 设置Python安装路径
set "PYTHON_PATH=C:\Users\96403\AppData\Local\Programs\Python\Python313"
set "SCRIPTS_PATH=C:\Users\96403\AppData\Local\Programs\Python\Python313\Scripts"

:: 检查路径是否存在
if not exist "%PYTHON_PATH%" (
    echo 错误: Python安装路径不存在: %PYTHON_PATH%
    pause
    exit /b 1
)

if not exist "%SCRIPTS_PATH%" (
    echo 警告: Python Scripts路径不存在: %SCRIPTS_PATH%
    echo.
)

:: 检查当前PATH是否已包含Python路径
echo 正在检查当前PATH配置...
path | find /i "%PYTHON_PATH%" >nul
if %errorlevel% equ 0 (
    echo Python路径已在系统PATH中
) else (
    echo 正在添加Python路径到系统PATH...
    setx PATH "%%PATH%%;%PYTHON_PATH%;%SCRIPTS_PATH%" /m >nul
    if %errorlevel% equ 0 (
        echo 成功添加Python路径到系统PATH
    ) else (
        echo 错误: 需要以管理员权限运行此脚本
        pause
        exit /b 1
    )
)

echo.
echo ========================================
echo 配置完成
echo ========================================
echo.
echo 请重新打开命令行窗口使更改生效
echo.
echo 验证命令:
echo python --version
echo pip --version
echo.
pause