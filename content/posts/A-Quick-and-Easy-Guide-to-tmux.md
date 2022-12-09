
---
title: "Tmux Essentials"
date: 2021-12-27T19:56:13-05:00
draft: false
---
# A Quick and Easy Guide to tmux

The shortcut to split panes into a left and a right pane is `C-b %`.



Switching to a different pane uses the `C-b <arrow key>` shortcut



Either type `exit` or hit `Ctrl-d` and it’s gone.



Creating new windows is as easy as typing `C-b c` (



To switch to the *previous* window (according to the order in your status bar) use `C-b p`, to switch to the *next* window use `C-b n`.



`C-b <number>` where <number>



To detach your current session use `C-b d`.



use `C-b D` to have tmux give you a choice which of your sessions you want to detach.



```bash
tmux ls
```

```bash
tmux attach -t 0
```

```bash
ntmux new -s database
```

You could also rename your existing session:

```bash
tmux rename-session -t 0 database
```

The next time you attach to that session you simply use 

```bash
tmux attach -t database.
```

