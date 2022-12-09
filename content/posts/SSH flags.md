---
title: "SSH flags"
date: 2022-01-29T19:56:13-05:00
draft: false
---
```bash

# -v (verbose) option will give you details about the connection process of SSH. This is useful when troubleshooting a troublesome connection.
ssh -v user@linuxconfig.org
# To increase verbosity even further
ssh -vvv user@linuxconfig.org
# SSH Version on client machine
ssh -V
# OpenSSH_7.4p1 Debian-10+deb9u7, OpenSSL 1.0.2u 20 Dec 2019

```

# $SHLVL Variable

The $SHLVL variable tells you how many shells deep you are.

```
echo $SHLVL
```

To see which shells are already installed for your distribution, run **cat /etc/shells**.

```
cat /etc/shells
```

```bash
uname
```

# Check permissions with stat

```bash
stat -c "%a %A" [FILE_PATH]
# or just `stat` but that prints extraneous info that if you just want the permission number 
# "%a" --- access rights in octal (note '#' and '0' print f flags)
# "%A" --- acess rights in human readable form
```





