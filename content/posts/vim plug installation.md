---
title: "vim plug installation for new computer"
date: 2022-02-13T19:56:13-05:00
draft: false
---
# vim plug installation
sh -c 'curl -fLo "$XDG_DATA_HOME:-$HOME/.local/share"/nvim/site/autoload/plug.vim --create-dirs \\
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```
