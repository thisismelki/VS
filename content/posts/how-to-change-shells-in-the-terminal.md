---
title: "How to Change Shells in the Terminal"
date: 2022-12-08T19:47:22-05:00
draft: false
---
Check which shell you are in.
```bash
echo $SHELL
```

Check shells available for use
```bash
cat /etc/shells
```

Change shell the long way
```bash
chsh --shell /bin/bash
```

Change shell the short way

```bash
# for bash
chsh -s /bin/bash
# for fish
chsh -s /usr/local/bin/fish
```

