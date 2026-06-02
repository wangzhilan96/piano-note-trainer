# 部署到 GitHub Pages（出门用手机练）

## 一、在 GitHub 创建仓库

1. 打开 https://github.com/new  
2. 仓库名建议：`piano-note-trainer`（或任意英文名）  
3. 选 **Public**（免费 Pages 需要公开仓库，或你有 GitHub Pro 可用私有库）  
4. **不要**勾选 “Add a README”（避免和本地冲突）  
5. 创建仓库  

记下仓库地址，例如：`https://github.com/你的用户名/piano-note-trainer.git`

## 二、把本地项目推上去

> 若提示找不到 `git` 命令：先安装 [Git for Windows](https://git-scm.com/download/win)，或使用下面的 **「不用命令行」** 方式。

### 方式 A：命令行（推荐）

在 **PowerShell** 里执行（把路径和用户名改成你的）：

```powershell
cd d:\cursor\piano-note-trainer

git init
git branch -M main
git add .
git commit -m "Initial commit: piano note trainer for GitHub Pages"
git remote add origin https://github.com/你的用户名/piano-note-trainer.git
git push -u origin main
```

第一次 push 会要求登录 GitHub（浏览器或 Personal Access Token）。

### 方式 B：不用命令行（GitHub 网页上传）

1. 创建空仓库后，点 **Add file** → **Upload files**  
2. 把 `d:\cursor\piano-note-trainer` 里**所有文件和文件夹**拖进页面（含 `.github`、`.gitignore`、`index.html` 等）  
3. 提交说明填 `Initial commit` → **Commit changes**  
4. 以后改文件可在网页上编辑 `index.html`，或安装 GitHub Desktop 同步  

## 三、开启 GitHub Pages

1. 打开仓库 → **Settings** → 左侧 **Pages**  
2. **Build and deployment** → **Source** 选 **GitHub Actions**（不要选 “Deploy from a branch”，已用工作流自动发布）  
3. 等 1～3 分钟，到 **Actions** 标签看绿色 ✓ “Deploy to GitHub Pages”  
4. 回到 **Pages** 页，会显示网址，一般为：  

   `https://你的用户名.github.io/piano-note-trainer/`

## 四、手机使用

1. 手机浏览器打开上面的网址（必须 **https**）  
2. 第一次 **先点一下屏幕**，再点「开始游戏」（才能播放钢琴声）  
3. iPhone：Safari → 分享 → **添加到主屏幕**  
4. 安卓：Chrome → **添加到主屏幕**

## 五、以后更新

改完 `index.html` 后：

```powershell
cd d:\cursor\piano-note-trainer
git add .
git commit -m "更新练习内容"
git push
```

等 Actions 跑完，手机刷新页面即可。

## 常见问题

| 问题 | 处理 |
|------|------|
| Actions 失败 | 仓库 Settings → Pages → Source 是否为 **GitHub Actions** |
| 钢琴声没有 | 先点屏幕；检查手机未静音；等底部显示「三角钢琴音色已就绪」 |
| 背景图不显示 | bluey.tv 图片需联网；可自备图放到 `assets/bluey/heeler-family.jpg` 后 push |
| 404 | 网址末尾要有 `/`，或访问 `.../index.html` |
