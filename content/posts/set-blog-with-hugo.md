---
title: 'Set Blog With Hugo'
date: 2020-11-25T08:17:41+08:00
draft: false
tags:
  - github
  - hugo
---

### 安装并准备环境

```sh
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

```sh
# 添加主题
git submodule add https://github.com/athul/archie.git themes/archie
# 修改config.toml
theme = archie
```

### 撰写首篇博客

```sh
hugo new post/set-blog.md
# 预览
./preview.sh
# 推送
./deploy.sh
```

### 设置 pages 仓库

设置 `liuyinz.github.io` 仓库, setting -> Github Pages -> `master /root`
