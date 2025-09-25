@echo off
chcp 65001 >nul
echo ========================================
echo    GitHub Pages 命令行部署脚本
echo ========================================
echo.

REM 检查是否在正确的目录
if not exist "index.html" (
    echo 错误：请在项目根目录运行此脚本
    echo 当前目录：%CD%
    pause
    exit /b 1
)

echo 项目文件检查：
if exist "index.html" echo ✅ index.html
if exist "coastal_detailed_travel_guide.html" echo ✅ coastal_detailed_travel_guide.html
if exist "weihai_travel_guide.html" echo ✅ weihai_travel_guide.html
if exist "travel_map.html" echo ✅ travel_map.html
if exist "coastal_route_map.html" echo ✅ coastal_route_map.html
if exist "coastal_route_guide.html" echo ✅ coastal_route_guide.html
if exist "checklist.html" echo ✅ checklist.html
echo.

echo 注意：在执行此脚本前，请确保：
echo 1. 已在GitHub创建仓库：AI_Map_Travel_Guide
echo 2. 已安装Git并配置用户信息
echo 3. 已将远程仓库地址替换为您的实际地址
echo.
set /p continue=是否继续？(y/n): 
if /i not "%continue%"=="y" (
    echo 部署已取消
    pause
    exit /b 0
)

echo.
echo ========================================
echo 开始Git部署流程...
echo ========================================
echo.

echo 1. 初始化Git仓库...
git init

if errorlevel 1 (
    echo ❌ Git初始化失败，请检查Git安装
    pause
    exit /b 1
)

echo 2. 添加文件到暂存区...
git add .

if errorlevel 1 (
    echo ❌ 添加文件失败
    pause
    exit /b 1
)

echo 3. 提交更改...
git commit -m "部署：合肥-威海自驾游攻略网站 - %date% %time%"

if errorlevel 1 (
    echo ❌ 提交失败，可能是没有更改或配置问题
    pause
    exit /b 1
)

echo 4. 添加远程仓库（请先修改下面的URL）...
echo 注意：请将下面的URL替换为您的实际GitHub仓库地址
echo 格式：https://github.com/您的用户名/AI_Map_Travel_Guide.git
echo.
set /p repo_url=请输入您的GitHub仓库URL: 

if "%repo_url%"=="" (
    echo 使用默认URL（请确保正确）
    set repo_url=https://github.com/您的用户名/AI_Map_Travel_Guide.git
)

git remote add origin %repo_url%

if errorlevel 1 (
    echo ❌ 添加远程仓库失败
    pause
    exit /b 1
)

echo 5. 推送到GitHub...
echo 注意：首次推送可能需要输入GitHub用户名和密码/令牌
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ 推送失败，可能的原因：
    echo - 分支名称不匹配，尝试创建main分支...
    git branch -M main
    git push -u origin main
    
    if errorlevel 1 (
        echo ❌ 仍然失败，请检查：
        echo 1. GitHub仓库是否存在
        echo 2. 网络连接
        echo 3. 认证信息
        pause
        exit /b 1
    )
)

echo.
echo ========================================
echo 🎉 部署成功！
echo ========================================
echo.
echo 您的网站地址：https://您的用户名.github.io/AI_Map_Travel_Guide/
echo.
echo 下一步操作：
echo 1. 访问您的GitHub仓库
echo 2. 进入 Settings -> Pages
echo 3. 确保Source设置为 main branch / (root)
echo 4. 等待几分钟让GitHub完成部署
echo.
echo 部署完成后，您的朋友就可以通过以下地址访问：
echo https://您的用户名.github.io/AI_Map_Travel_Guide/
echo.
pause