---
title: "Three methods to install onedark theme in vim for aesthetics"
date: 2022-02-03T19:56:13-05:00
draft: false
---
# Install onedark theme for vim

## URL

https://github.com/joshdick/onedark.vim

# Method 1 - Use vim-plug



# Method 2 - Manual

download the repo

place `colors/onedark.vim` file in `~/.vimrc/colors/`

place `autload/onedark.vim` file in `~/.vim/autoload/`

```bash
cp ~/Downloads/colors/onedark.vim ~/.vimrc/colors/
```

```bash
cp ~/Downloads/autoload/onedark.vim ~/.vim/autoload/
```



#  Method 3 - Vim 8 Package

Clone repo into `~/.vim/pack/*/opt/` 

The `*` in the path can be any value; see `:help packages` for more information.)

```bash
~/.vim/pack/*/opt/
```

add the following to .vimrc

```bash
# add to ~/.vimrc 
packadd! onedark.vim 
```

