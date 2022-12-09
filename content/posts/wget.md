---
title: "wget"
date: 2022-03-28T19:56:13-05:00
draft: false
---
```bash
wget -c ftp://ftp.vim.org/pub/vim/unix/vim-8.1.tar.bz2 -O - | sudo tar -xj

```



Files that have a .tar.gz or a .tar.bz2 extension are compressed archive files. A file with just a .tar extension is uncompressed, but those will be very rare.


The .gz or .bz2 extension suffix indicates that the archive has been **compressed**, using either the gzip or bzip2 compression algorithm.

tar.bz2 file is a Tar archive compressed with Bzip2
