---
title: "Write Post With Emacs"
date: 2021-03-06T00:27:26+08:00
tldr: "easy-hugo package speedup!"
draft: false
tags:
  - hugo
  - emacs
---

### 载入包管理器 leaf(or use-package,etc)

```elisp
;; leaf @https://github.com/conao3/leaf.el
(require 'leaf)
(eval-and-compile
  (setq leaf-expand-minimally nil)
  (setq leaf-defaults '(:ensure nil)))

(leaf leaf-keywords
  :require t
  :config (leaf-keywords-init))
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
        easy-hugo-server-flags "-D")
  :config
  ;; HACK search with consult-ripgrep
  (defun easy-hugo-consult ()
    "Search for blog article with `consult-ripgrep'or `consult-grep'"
    (interactive)
    (easy-hugo-with-env
     (let ((dir (expand-file-name easy-hugo-postdir easy-hugo-basedir)))
       (if (featurep 'consult)
           (if (executable-find "rg")
               (consult-ripgrep dir nil)
             (consult-grep dir nil))
         (error "Module 'consult' is not loaded"))))))
         
```

### 使用步骤

M-x `easy-hugo` --> `new post` --> `preview` --> `draft : false` --> `deploy`

