---
title: "Git basics"
date: 2022-10-22T19:56:13-05:00
draft: false
---
# Git
```bash
git remote add origin https://github.com/XuQtAK3p23E7/react-blog.git


$ git remote -v
origin  https://github.com/XuQtAK3p23E7/react-blog.git (fetch)
origin  https://github.com/XuQtAK3p23E7/react-blog.git (push)

git push -u origin main
```

# Configure git global name 
```bash

Chriss-MacBook-Pro:my-blog-backend chrisruss$ git config --global user.name
Your Name
```

# Configure not global git user name only for a specific repo

```bash

Chriss-MacBook-Pro:my-blog-backend chrisruss$ git config user.name "Socrates"
```


# Configure GLOBAL user email

```bash
$ git config --global user.email
you@example.com
```

# Configure LOCAL repo user email
```bash

$ git config user.email
you@example.com

```





# How i added a local repo to github 
# add remote origin GH-URL
```bash

git remote add origin https://github.com/XuQtAK3p23E7/react-blog.git
```

# 
```bash
$ git branch -M main
```

# push upload origin main
make sure you create a personal token since support for password authentication was removed on August 13, 2021.
https://docs.github.com/en/get-started/getting-started-with-git/about-remote-repositories#cloning-with-https-urls
```bash
$ git push -u origin main
```

