---
title: "file permissions"
date: 2022-02-05T19:56:13-05:00
draft: false
---
# file permissions

r: 4

w: 2

x: 1

**Read**,  **write** and **execute** (full) permission on a file in octal is 0+r+w+x =  0+4+2+1 = **7**

Only **Read** and **write** permission on a file in octal is 0+r+w+x = 0+4+2+0  = **6**

Only **read** and **execute** permission on a file in octal is 0+r+w+x =  0+4+0+1 = **5**

Use above method to calculate permission for group and others. Let us  say you wish to give full permission to owner, read & execute  permission to group, and read only permission to others, then you need  to calculate permission as follows: User = r+w+x = 0+4+2+1 = 7 Group=  r+w+x = 0+4+2+0 = 6 Others = r+w+x = 0+0+0+1 = 1

Effective permission is 761.

```
1        execute-only           --x
```

```
2           write               -w-
```

```
3     execute  and  write       -wx
```

```
4          read-only            r--
```

```
5    read  and  execute         r-x
```

```
6       read  and  write        rw-
```

```
7  read,  write,  and  execute  rwx
```







**7 –** for read, write, and execute permission

**6 –** for read and write privileges

**5** – for read and execute privileges

**4** – for read privileges



![chmod octal numeric format explained](https://phoenixnap.com/kb/wp-content/uploads/2021/04/chmod-octal-format-explained.jpg)











