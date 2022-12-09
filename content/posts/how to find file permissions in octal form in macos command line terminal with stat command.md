---
title: "stat command in macos vs linux"
date: 2022-02-05T19:56:13-05:00
draft: false
---
# stat command - Macos  vs Linux

The `stat` command isn't standardized, so you can't expect it to have the same behavior on all Unix variants. In practice, there's BSD stat, and Linux stat, and many other variants don't have a `stat` command.

## Method 1 macos only 

```bash
# octal permission format
stat -f %p [FILE OR DIR]

# or to remove front digits
stat -f %Lp [FILE OR DIR] 



# User ID of file's owner.
stat -f %u [FILE OR DIR]

# Group ID of file's owner.
stat -f %g [FILE OR DIR]

# The size of file in bytes.
stat -f %z [FILE OR DIR]


# The time file was last accessed
stat -f %a [FILE OR DIR]

# The time file was last modified
stat -f %m [FILE OR DIR]

# when inode was changed
stat -f %c [FILE OR DIR]

# birth of time of inode
stat -f %B [FILE OR DIR]

```

## Method 2 - macos only 

```bash
stat -f '%A %a %N' *
# %A --- octal file permissions
# %a --- ?
# %N --- name of file or dir
#755 1643740171 Q1.sh
#755 1644072928 animal_farm
#755 1644071333 check_string_length.sh
#755 1643742200 comment.sh

```



## Method 3 - mac only



```bash
stat -x foo
```



### Method 1 - Linux only



```bash
stat --format '%A %a %N' *
```

### Method 2 - Linux only

```bash
stat -c '%a %N' *
# 644 'script.sh'
# 755 'conditional.sh'
```

