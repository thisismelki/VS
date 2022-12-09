---
title: "How to do 90% of what plugins do (with just vim)"
date: 2022-01-26T19:56:13-05:00
draft: false
---
# How to Do 90% of What Plugins Do (With Just Vim)



```tex


set path+=**
set wildmenu

command! MakeTags !ctags -R .
-Use ^] to jump to tag under cursor
Use g^ 


"AUTOCOMPLETE: 

" The good stuff is documented in |ins-compeletion|
" HIGHLIGHTS:
^x^n for JUST this file
^x^f for filenames (works with our path trick!)
^x^] for tags only
^n for anything specified by the 'complete' option
"NOW WE CAN:
Use ^n and ^p to go back & forth in the suggestion list

" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0 "disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 "open splits to the right
let g:netrw


```

