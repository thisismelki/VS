---
title: "Vim Features"
date: 2022-01-04T19:56:13-05:00
draft: false
---
# Vim Features

:tabedit file2

:tabedit file3 

`gt` or `gT` to go to next tab or previous tab respectively

```
2gt takes you to 2nd tab
```

```
:tabfirst
:tablast
```

```
:tabn - next tab
:tabp - previous tab
:tabs - list all open tabs
To open multiple files in tabs: $ vim -p source.c source.h
```

To close a single tab: `:tabclose`

To close a single tab: `:tabclose` and to close all other tabs except the current one: `:tabonly` . Use the suffix`!` to override changes of unsaved files

Steps:
Enter normal mode 
mk - mark point
y'k - will yank/copy all the lines from start to end
d'k - will cut/delete lines from the start to end


# Folding code blocks
1. Go to function body type mb.
2. Now, just go to the end of the function body using % (brace matching)
3. type -  zf'b 
if using line numbers -> :5,16fo(fo stands for code fold)
zo - Open the code fold
zc - Close the code fold
za - toggle between open and closed folds

To retain folds, add to vimrc -> ~/.vimrc
~/.vimrc
```
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

```
1. Esc to enter normal mode
2. =i{ - auto indents

> or < - increase/decrease the indentation within a block

Ctrl + n - in insert mode show options

:Explore



























