---
title: "Pushing git repo to Github"
date: 2022-02-13T19:56:13-05:00
draft: false
---
# Pushing git repo to Github

If you want to have your repository backed up somewhere outside of your machine, such as GitHub. See [github.com/new](http://github.com/new) to create a new repository, and add the repository URL to your project (where https:// needs to be replaced with the repository URL— something like https://github.com/<your-username>/animal-farm.git):

```bash
git remote add origin <url>
```

Now, you just need to push the changes from your local repository:

```bash
git push -u origin master
```









Your local and remote repositories will now operate independently. If you want to update your local repository with changes from the remote repository (the one you cloned), you'll have to run git pull --rebase.



```bash
git pull --rebase
```

