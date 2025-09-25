# Python环境变量配置脚本
# 使用方法：以管理员身份运行此脚本

# 设置Python安装路径
$pythonPath = "C:\Users\96403\AppData\Local\Programs\Python\Python313"
$pythonScripts = "C:\Users\96403\AppData\Local\Programs\Python\Python313\Scripts"

# 检查路径是否存在
if (-not (Test-Path $pythonPath)) {
    Write-Host "错误: Python安装路径不存在: $pythonPath" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $pythonScripts)) {
    Write-Host "警告: Python Scripts路径不存在: $pythonScripts" -ForegroundColor Yellow
}

# 获取当前PATH
$currentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")

# 检查是否已配置
if ($currentPath -like "*$pythonPath*") {
    Write-Host "Python路径已在系统PATH中" -ForegroundColor Green
} else {
    # 添加到系统PATH
    $newPath = $currentPath + ";" + $pythonPath + ";" + $pythonScripts
    [Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")
    Write-Host "已添加Python路径到系统PATH" -ForegroundColor Green
}

# 设置PYTHONPATH（可选）
$customModules = "D:\my_python_modules"
if (Test-Path $customModules) {
    [Environment]::SetEnvironmentVariable("PYTHONPATH", $customModules, "Machine")
    Write-Host "已设置PYTHONPATH: $customModules" -ForegroundColor Green
}

# 验证配置
Write-Host "`n验证配置:" -ForegroundColor Cyan
Write-Host "PATH环境变量已更新"
Write-Host "请重新打开命令行窗口使更改生效"
Write-Host "`n验证命令:"
Write-Host "python --version"
Write-Host "pip --version"