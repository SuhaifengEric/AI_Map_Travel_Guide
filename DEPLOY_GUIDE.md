# 🌐 项目公网部署指南

## 推荐方案：GitHub Pages（免费）

### 第一步：准备GitHub账号
1. 访问 [GitHub官网](https://github.com) 注册账号
2. 登录后点击右上角"+" → "New repository"

### 第二步：创建仓库
- 仓库名：`AI_Map_Travel_Guide`（或其他名称）
- 描述：合肥-威海自驾游攻略网站
- 选择：Public（公开）
- 勾选："Initialize this repository with a README"

### 第三步：上传文件
1. 下载安装 [GitHub Desktop](https://desktop.github.com)
2. 克隆仓库到本地
3. 将所有HTML文件复制到仓库文件夹
4. 在GitHub Desktop中提交更改并推送

### 第四步：启用GitHub Pages
1. 进入仓库 → Settings → Pages
2. Source选择："Deploy from a branch"
3. Branch选择："main" 或 "master"，文件夹："/ (root)"
4. 点击Save，等待几分钟

### 第五步：访问网站
- 您的网站地址：`https://[您的用户名].github.io/AI_Map_Travel_Guide/`
- 分享给朋友即可访问

## 备选方案：Vercel部署

### 快速部署步骤
1. 访问 [Vercel官网](https://vercel.com) 注册
2. 点击"Import Project"
3. 连接GitHub账号，选择您的仓库
4. 点击Deploy，自动获得`.vercel.app`域名

## 📋 部署前检查清单

✅ 所有HTML文件链接正确  
✅ 图片资源路径正确  
✅ 跨页面导航正常  
✅ 在本地测试无误  

## 🔗 推荐访问方式

### 给朋友的访问链接：
- GitHub Pages: `https://[用户名].github.io/AI_Map_Travel_Guide/`
- 或Vercel: `https://ai-map-travel-guide.vercel.app`

### 二维码分享：
可以使用二维码生成工具生成访问二维码，方便手机扫描

## 🛠 技术支持

如果遇到部署问题：
1. 检查浏览器控制台错误信息
2. 确保所有文件路径正确
3. 验证GitHub Pages构建状态

## 📞 帮助资源

- [GitHub Pages文档](https://docs.github.com/zh/pages)
- [Vercel文档](https://vercel.com/docs)
- 静态网站部署教程

---

💡 **提示**：GitHub Pages完全免费，适合个人项目分享，部署成功后您的朋友就可以通过互联网访问您的旅行攻略网站了！