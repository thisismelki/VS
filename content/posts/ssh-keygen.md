---
title: "Ssh-keygen snippet"
date: 2022-01-26T19:56:13-05:00
draft: false
---


```bash
ssh-keygen -t rsa -b 4096
```

-t --- probably stands for type & RSA is the recomended type as of 2021.

-b ---  flag increasing the bits makes it harder to crack the key by brute force methods 



how to transfer a public key to the server by connecting via a password since the pubic key is not yet placed in the server.

```bash
ssh-copy-id <username>@<host>
```

