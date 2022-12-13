---
title: "Find current user mailbox through bash"
date: 2022-07-30T19:56:13-05:00
draft: false
---

If looking for environment variable `MAIL`
```bash
env | grep MAIL
# or 
find / -name 'mail' 2> /dev/null
# / - is the location where it searches
# -name 'mail' - is the query to search
# 2> - error messages will redirected to nowhere
```
