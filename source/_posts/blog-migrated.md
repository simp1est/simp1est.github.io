---
title: 博客迁移完成：Hexo + Butterfly 上线
tags:
  - 随笔
categories:
  - 站务
abbrlink: b56e
date: 2026-10-26 23:35:00
---

之前是一个手写的终端风格单页，现在正式迁移到 **Hexo + Butterfly** 模板（同 hundredsu 博客同款）。

## 为什么迁移

- 以后写文章只需要丢一个 Markdown 文件进 `source/_posts/`，首页、归档、标签、目录（TOC）、搜索全部自动生成
- Butterfly 主题：文章目录、代码高亮、图片灯箱、夜间模式开箱即用
- 托管依然免费：GitHub Pages + Actions 自动构建

## 旧页面

原来的终端风格首页保留在 [/terminal.html](/terminal.html)，可以随时回去看看。

## 测试代码块

```bash
git add . && git commit -m "new post" && git push
```

推送后 Actions 自动构建上线，1~2 分钟生效。
