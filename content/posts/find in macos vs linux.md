---
title: "find command in macos vs linux"
date: 2022-02-03T19:56:13-05:00
draft: false
---
# find in macos vs linux



```bash
find $HOME -path $HOME/$dir_name -prune -o \ -name "*$file_suffix" -exec cp {} $HOME/$dir_name/ \;

```



```bash
find /Users/melky -path /Users/melky/Bkup -prune -o \ -name "*.sh" -exec cp {} /User/melky/bkup/ \;
```



```bash
```

