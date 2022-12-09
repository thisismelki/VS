---
title: "To fetch a single file from GitHub with curl or wget"
date: 2022-02-03T19:56:13-05:00
draft: false
---
# To fetch a single file from GitHub, you can use curl or wget on Linux or macOS

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim
```