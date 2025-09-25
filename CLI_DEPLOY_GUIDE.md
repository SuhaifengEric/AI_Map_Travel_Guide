# 🚀 命令行部署GitHub Pages完整指南

## 第一步：安装Git

### Windows系统安装Git
1. 下载Git：访问 [git-scm.com/download/win](https://git-scm.com/download/win)
2. 运行安装程序，全部选择默认选项
3. 安装完成后，打开命令提示符或PowerShell
4. 验证安装：`git --version`

## 第二步：配置Git

### 设置用户信息（首次使用需要）
```bash
# 设置用户名（替换为您的GitHub用户名）
git config --global user.name "您的GitHub用户名"

# 设置邮箱（替换为您的GitHub注册邮箱）
git config --global user.email "您的邮箱@example.com"

# 验证配置
git config --list
```

## 第三步：创建GitHub仓库

### 通过网页创建（必须先做）
1. 登录 [GitHub.com](https://github.com)
2. 点击右上角"+" → "New repository"
3. 填写信息：
   - Repository name: `AI_Map_Travel_Guide`
   - Description: `合肥-威海自驾游攻略网站`
   - Public（公开）
   - **不要勾选** "Initialize this repository with a README"（重要！）
4. 点击"Create repository"

## 第四步：本地Git初始化

### 在项目目录中执行以下命令：
```bash
# 进入项目目录
cd d:\trae_project\AI_Map

# 初始化Git仓库
git init

# 添加所有文件到暂存区
git add .

# 提交更改
git commit -m "初始提交：添加合肥-威海自驾游攻略网站"

# 添加远程仓库（替换为您的GitHub用户名）
git remote add origin https://github.com/您的用户名/AI_Map_Travel_Guide.git

# 推送代码到GitHub
git push -u origin main
```

## 第五步：启用GitHub Pages

### 通过命令行或网页启用

**方法一：通过网页启用（推荐新手）**
1. 访问您的GitHub仓库：`https://github.com/您的用户名/AI_Map_Travel_Guide`
2. 点击"Settings" → "Pages"
3. 在"Source"部分：
   - Branch: 选择"main"
   - Folder: 选择"/ (root)"
4. 点击"Save"

**方法二：通过GitHub CLI（高级用户）**
```bash
# 安装GitHub CLI（可选）
# 下载：https://cli.github.com/

# 启用Pages
gh repo edit --enable-pages --pages-branch=main
```

## 第六步：访问网站

### 获取网站地址
- **您的网站地址**：`https://您的用户名.github.io/AI_Map_Travel_Guide/`
- 部署完成后等待几分钟即可访问

## 完整部署脚本

### 创建一键部署脚本
创建一个名为 `deploy.bat` 的文件：

```batch
@echo off
echo ========================================
echo    GitHub Pages 命令行部署脚本
echo ========================================
echo.

cd /d "d:\trae_project\AI_Map"

echo 1. 初始化Git仓库...
git init

echo 2. 添加文件到暂存区...
git add .

echo 3. 提交更改...
git commit -m "部署更新：合肥-威海自驾游攻略网站"

echo 4. 推送到GitHub...
git push -u origin main

echo.
echo ========================================
echo 部署完成！
echo 网站地址：https://您的用户名.github.io/AI_Map_Travel_Guide/
echo ========================================
pause
```

## 后续更新部署

### 当您修改文件后，只需执行：
```bash
cd d:\trae_project\AI_Map

git add .
git commit -m "更新：描述您的修改内容"
git push
```

## 常见问题解决

### 问题1：推送时提示认证失败
```bash
# 设置GitHub个人访问令牌
git remote set-url origin https://您的用户名:您的令牌@github.com/您的用户名/AI_Map_Travel_Guide.git
```

### 问题2：分支名称冲突
```bash
# 如果提示分支名称问题，使用：
git branch -M main
git push -u origin main
```

### 问题3：文件权限问题
```bash
# 如果遇到文件权限问题，使用：
git add --all
git commit -m "修复文件权限"
git push
```

## 部署验证

### 检查部署状态
1. 访问您的GitHub仓库
2. 点击"Actions"标签页查看部署状态
3. 等待绿色对勾表示部署成功

### 测试网站功能
部署完成后，请测试：
- ✅ 首页加载正常
- ✅ 页面间导航正常
- ✅ 图片和样式显示正确
- ✅ 移动端适配正常

## 高级功能

### 自定义域名（可选）
如果您有自己的域名，可以在仓库Settings → Pages中添加自定义域名。

### 自动部署
每次推送代码到main分支，GitHub会自动重新部署网站。

---

💡 **提示**：命令行部署虽然需要一些学习成本，但一旦掌握，后续更新会非常快速和高效！