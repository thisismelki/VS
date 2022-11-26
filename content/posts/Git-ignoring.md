---
title: "Git ignoring"
date: 2022-11-22T19:56:13-05:00
draft: false
---

# .DS_Store ignoring

https://stackoverflow.com/questions/18393498/gitignore-all-the-ds-store-files-in-every-folder-and-subfolder

I think the problem you're having is that in some earlier commit, you've accidentally added `.DS_Store` files to the repository. Of course, once a file is tracked in your repository, it will continue to be tracked even if it matches an entry in an applicable .gitignore file.

You have to manually remove the `.DS_Store` files that were added to your repository. You can use

```
git rm --cached .DS_Store
```

Once removed, git should ignore it. You should only need the following line in your root `.gitignore` file: `.DS_Store`. Don't forget the period!

```
git rm --cached .DS_Store
```

removes only `.DS_Store` from the current directory. You can use

```
find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch
```

to remove all `.DS_Stores` from the repository.

**Felt tip:** Since you probably never want to include `.DS_Store` files, make a global rule. First, make a global `.gitignore` file somewhere, e.g.

```
echo .DS_Store >> ~/.gitignore_global
```

Now tell git to use it for all repositories:

```
git config --global core.excludesfile ~/.gitignore_global
```

[This page](https://help.github.com/articles/ignoring-files) helped me answer your question.