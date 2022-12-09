---
title: "Install vim-plugin if not installed"
date: 2022-02-03T19:56:13-05:00
draft: false
---
# Install vim-plugin if not installed.

```bash
" Install vim-plug if it's not already installed.
   if empty(glob('~/.vim/autoload/plug.vim'))
           silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.         github.com/junegunn/vim-plug/master/plug.vim
           autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
```

