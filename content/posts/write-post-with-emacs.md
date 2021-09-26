---
title: "Write Post With Emacs"
date: 2021-03-06T00:27:26+08:00
draft: false
tags:
  - hugo
  - emacs
---
<!-- markdown-toc start -->
**目录**

- [载入包管理器 leaf(or use-package,etc)](#载入包管理器-leafor-use-packageetc)
- [载入emacs扩展 easy-hugo](#载入emacs扩展-easy-hugo)
- [使用步骤](#使用步骤)

<!-- markdown-toc end -->

### 载入包管理器 leaf(or use-package,etc)

```elisp
;; leaf @https://github.com/conao3/leaf.el
(require 'leaf)
(eval-and-compile
  (setq leaf-expand-minimally nil)
  (setq leaf-defaults '(:ensure nil)))

```

### 载入emacs扩展 easy-hugo 

```elisp
;; easy-hugo @https://github.com/masasam/emacs-easy-hugo
(leaf easy-hugo
  :commands easy-hugo
  :init
  (setq easy-hugo-basedir  "~/Code/blog/"
        easy-hugo-postdir "content/posts/"
        easy-hugo-url  "https://liuyinz.github.io/"
        easy-hugo-preview-url "http://localhost:1313/"
        easy-hugo-server-flags "-D"))
         
```

### 使用步骤

M-x `easy-hugo` --> `new post` --> `preview` --> `draft : false` --> `deploy`

