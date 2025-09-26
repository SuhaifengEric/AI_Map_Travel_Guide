# 🚀 GitHub Pages 详细部署步骤

## 第一步：创建新仓库

1. **登录GitHub** - 访问 [github.com](https://github.com) 并登录
2. **创建仓库** - 点击右上角"+" → "New repository"
3. **填写仓库信息**：
   - Repository name: `AI_Map_Travel_Guide`（或其他您喜欢的名称）
   - Description: `合肥-威海自驾游攻略网站`
   - 选择：**Public**（公开）
   - 勾选：**"Add a README file"**
   - 点击：**"Create repository"**

## 第二步：安装Git工具

### 方法一：使用GitHub Desktop（推荐新手）
1. 下载 [GitHub Desktop](https://desktop.github.com)
2. 安装并登录您的GitHub账号
3. 在GitHub Desktop中克隆您刚创建的仓库

### 方法二：使用Git命令行
如果您熟悉命令行，也可以直接使用Git

## 第三步：上传项目文件

### 使用GitHub Desktop（推荐）：

1. **克隆仓库**：
   - 打开GitHub Desktop
   - File → Clone repository
   - 选择您刚创建的仓库
   - 选择本地保存位置（如：`D:\GitHub\AI_Map_Travel_Guide`）

2. **复制文件**：
   - 将 `d:\trae_project\AI_Map\` 文件夹中的所有文件复制到仓库文件夹
   - 包括：所有 `.html` 文件、图片、CSS文件等

3. **提交更改**：
   - 在GitHub Desktop中会看到所有新文件
   - 在左下角填写提交信息，如："添加旅行攻略网站文件"
   - 点击"Commit to main"

4. **推送更改**：
   - 点击右上角"Push origin"将文件上传到GitHub

## 第四步：启用GitHub Pages

1. **进入仓库设置**：
   - 在GitHub网站打开您的仓库
   - 点击顶部菜单的 **"Settings"**

2. **配置Pages**：
   - 左侧菜单找到 **"Pages"**
   - 在"Source"部分：
     - Branch: 选择 **"main"**
     - Folder: 选择 **"/ (root)"**
   - 点击 **"Save"**

3. **等待部署**：
   - 等待几分钟，GitHub会自动构建和部署
   - 刷新页面，会看到绿色的部署成功提示

## 第五步：访问您的网站

- **您的网站地址**：`https://SuhaifengEric.github.io/AI_Map_Travel_Guide/`
- **示例**：如果用户名为SuhaifengEric，地址为：`https://SuhaifengEric.github.io/AI_Map_Travel_Guide/`


## 📋 部署检查清单

### 部署前检查：
✅ 所有HTML文件链接正确  
✅ 页面间导航正常  
✅ 图片资源路径正确  
✅ 本地测试无误  

### 部署后验证：
✅ 网站可以正常访问  
✅ 所有页面链接正常  
✅ 图片和样式加载正确  
✅ 移动端显示正常  

## 🔧 常见问题解决

### 问题1：页面显示404
- 检查仓库名称是否正确
- 确认Pages设置中分支和文件夹选择正确
- 等待几分钟让GitHub完成部署

### 问题2：图片或样式不显示
- 检查文件路径是否为相对路径
- 确保所有资源文件都已上传
- 检查文件名大小写（GitHub区分大小写）

### 问题3：链接跳转错误
- 检查HTML文件中的链接路径
- 确保所有页面文件都在根目录

## 🌟 分享给朋友

部署成功后，您可以将以下链接分享给朋友：

```
https://[您的GitHub用户名].github.io/AI_Map_Travel_Guide/
```

### 二维码分享：
您还可以使用在线二维码生成工具，将网址生成二维码，方便朋友手机扫描访问。

## 💡 高级功能（可选）

### 自定义域名：
如果您有自己的域名，可以在Pages设置中添加自定义域名。

### 自动部署：
每次您更新代码并推送到GitHub，网站会自动更新。

---

🎉 **恭喜！** 完成以上步骤后，您的旅行攻略网站就可以通过互联网访问了！

**立即开始**：现在就可以登录GitHub，按照步骤操作，大约15-30分钟即可完成部署。