---
title: "Find & replace with vim"
date: 2022-01-26T19:56:13-05:00
draft: false
---

# Find each occurrence of 'foo' (in all lines), and replace it with 'bar'.

# Method 1

```bash
:%s/foo/bar/g
```

# Method 2

If you just want to delete all occurrences of "involve", that is done with a standard vi command, e.g.,

```
:%s/\<involve\>//g
```

The markers `\<` and `\>` are used to ensure that you do not change words such as "involved", "involvement", etc.



# Method 3

Try this search and replace:

```
:%s/foo/bar/gc
```

*Change each 'foo' to 'bar', but ask for confirmation first.*

Press y or n to change or keep your text.