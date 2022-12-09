---
title: "Copying ED25519 key in macos to clipboard"
date: 2022-11-20T19:56:13-05:00
draft: false
---
# To copy an ED25519 key to the clipboard


```bash
tr -d '\n' < ~/.ssh/id_ed25519.eub | pbcopy
```

     tr -- translate characters
     -d      Delete characters in string1 from the input.
     < 