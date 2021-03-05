---
title: '利用HUGO搭建博客'
date: 2020-11-25T08:17:41+08:00
tags:
  - github
  - hugo
draft: false
---

### 安装并准备环境

```bash
brew install hugo
# 初始化
hugo new site blog
cd blog && git init
# 添加源仓库
git remote add origin https://github.com/liuyinz/blog.git
# 添加github-pages 仓库
git submodule add https://github.com/liuyinz/liuyinz.github.io.git public
```

### 设置主题

```bash
git submodule add https://github.com/liuyinz/hugo-PaperMod.git themes/papermod
# 修改config.yaml
```

### 撰写首篇博客

```bash
hugo new post/set-blog.md
# 预览
./preview.sh
# 推送
./deploy.sh
```

### 设置 pages 仓库

设置 liuyinz.github.io 仓库，打开 setting，定位至 Github Pages 处，设置为 master
