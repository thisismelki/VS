---
title: "list of all packages installed using Homebrew"
date: 2022-02-23T19:56:13-05:00
draft: false
---
# List of all packages installed using Homebrew

If you are not sure if you have installed a certain package such as gnu use the following
```bash
brew list | grep gnu
```



**all** including dependencies your installed Homebrew packages

```bash
brew list

```



items installed using **Homebrew Cask**.

```bash
brew list --cask

```



Shows you all top-level packages. That is packages that are not dependencies. This should be the most interesting if you are using the list to re-install packages.

```bash
brew leaves

```



It is possible to view the list of all the installed packages as a nicely formatted dependency tree.

```bash
brew deps --tree --installed




```



You can use this snippet to list all installed packages and sort them by their size.

```bash
brew list --formula | xargs -n1 -P8 -I {} \
    sh -c "brew info {} | egrep '[0-9]* files, ' | sed 's/^.*[0-9]* files, \(.*\)).*$/{} \1/'" | \
    sort -h -r -k2 - | column -t



```