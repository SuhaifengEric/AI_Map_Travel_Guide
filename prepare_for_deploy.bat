@echo off
echo ========================================
echo    GitHub Pages 部署准备工具
echo ========================================
echo.

echo 正在检查项目文件...

REM 检查主要HTML文件是否存在
if exist "index.html" (
    echo ✅ index.html 文件存在
) else (
    echo ❌ index.html 文件不存在
    pause
    exit /b 1
)

if exist "coastal_detailed_travel_guide.html" (
    echo ✅ coastal_detailed_travel_guide.html 文件存在
) else (
    echo ❌ coastal_detailed_travel_guide.html 文件不存在
)

if exist "weihai_travel_guide.html" (
    echo ✅ weihai_travel_guide.html 文件存在
) else (
    echo ❌ weihai_travel_guide.html 文件不存在
)

if exist "travel_map.html" (
    echo ✅ travel_map.html 文件存在
) else (
    echo ❌ travel_map.html 文件不存在
)

if exist "coastal_route_map.html" (
    echo ✅ coastal_route_map.html 文件存在
) else (
    echo ❌ coastal_route_map.html 文件不存在
)

if exist "coastal_route_guide.html" (
    echo ✅ coastal_route_guide.html 文件存在
) else (
    echo ❌ coastal_route_guide.html 文件不存在
)

if exist "checklist.html" (
    echo ✅ checklist.html 文件存在
) else (
    echo ❌ checklist.html 文件不存在
)

echo.
echo ========================================
echo 项目文件检查完成！
echo.
echo 下一步操作：
echo 1. 登录 GitHub.com
echo 2. 创建新仓库：AI_Map_Travel_Guide
echo 3. 下载 GitHub Desktop
echo 4. 将所有文件上传到仓库
echo 5. 在仓库设置中启用 GitHub Pages
echo.
echo 详细步骤请查看 GITHUB_DEPLOY_STEPS.md 文件
echo ========================================

pause