---
title: "Git Pro Book info"
date: 2022-02-13T19:56:13-05:00
draft: false
---
# Git Pro Book 

You can view all your settings and where they are coming from using:

```bash
git config --list --show-origin
```

set your username + email address

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

If you want to **override** this with a different name or email address for specific projects, you can run the command **without** the --global option when you’re **in that project**. 

If you want to use a **different text editor**, such as Emacs, you can do the following:

```bash
git config --global core.editor emacs
```

To set main as the default branch name do :

```bash
git config --global init.defaultBranch main
```

If you want to check your configuration settings, you can use the git config --list command to list all the settings Git can find at that point:

```bash
git config --list
```

You can also **check** what Git thinks a **specific key’s value** is by typing git config <key>:

```bash
git config user.name
```

query Git as the *origin* for that value & it will tell you which config file had the final say in setting that value:

```bash
git config --show-origin rerere.autoUpdate
```

there are **three equivalent ways** to get the comprehensive **manual page** (manpage) **help** for any of the Git commands:

```bash
git help <verb>
git <verb> --help
man git-<verb>
```

For **example**, you can get the manpage help for the git config command by running this:

```bash
git help config
```

more concise “help” output

```bash
git add -h
```

# Git Basics 

To start version-controlling existing files (as opposed to an empty dir ), you should probably begin tracking those files and do an initial commit:

```bash
git add *.c
git add LICENSE
git commit -m 'Initial project version'
```



You clone a repository with git clone <url>. For example, if you want to clone the Git linkable library called libgit2, you can do so like this:

```bash
git clone https://github.com/libgit2/libgit2
```

If you want to clone the repository into a directory named something other than libgit2, you can specify the new directory name as an additional argument:

```bash
git clone https://github.com/libgit2/libgit2 mylibgit
```

**Checking the Status of Your Files**

```bash
git status
```

**Tracking New Files**

```bash
git add README
```



Git also has a short status flag so you can see your changes in a more compact way. If you run git status -s or git status --short you get a far more simplified output from the command:

```bash
git status -s

```

**Ignoring Files**

Rules for the patterns you can put in the **.gitignore file** are as follows:

- Blank lines or lines starting with # are ignored. 

- Standard glob patterns work, and will be applied recursively throughout the entire working tree.

- You can **start patterns** with a forward slash (/) to **avoid recursivity**.

- You can **end patterns** with a forward slash (/) to **specifiy a directory**.

- You can **negate a pattern** by starting it with an exclamation point(!).

  ## Glob patterns are like simplified regular expressions that shells use.

1. An asterisk **(*)** matches zero or more characters

2. **[abc]** matches any character inside the brackets (in this case a, b, or c); 

3. a question mark **(?)** matches a single character;

4. brackets enclosing characters separated by a hyphen **([0- 9])** matches any character between them (in this case 0 through 9). 

5. You can also use two asterisks to match nested directories; a/**/z would match a/z, a/b/z, a/b/c/z, and so on.

   Example **.gitignore** file:

   ```bash
     # ignore all .a files
     *.a
     # but do track lib.a, even though you're ignoring .a files above
     !lib.a
     # only ignore the TODO file in the current directory, not subdir/TODO
     /TODO
     # ignore all files in any directory named build
     build/
     # ignore doc/notes.txt, but not doc/server/arch.txt
     doc/*.txt
     # ignore all .pdf files in the doc/ directory and any of its subdirectories
     doc/**/*.pdf
   ```

GitHub maintains a fairly comprehensive list of good .gitignore file examples for dozens of projects and languages at https://github.com/github/gitignore if you want a starting point for your project.

It is also possible to have additional .gitignore files in subdirectories. The rules in these nested .gitignore files apply only to the files under the directory where they are located. The Linux kernel source repository has 206 .gitignore files.

see man gitignore for the details.



**Viewing Your Staged and Unstaged Changes**

git diff shows you the exact lines added and removed

```bash
git diff
```

That command compares what is in your working directory with what is in your staging area

If you want to see what you’ve staged that will go into your next commit, you can use git diff --staged. This command compares your staged changes to your last commit:

```bash
git diff --staged
```



git diff --cached to see what you’ve staged so far (--staged and --cached are synonyms):

```bash
git diff --cached
```

If you run `git difftool` instead of `git diff`, you can view any of these diffs in software like emerge, vimdiff and many more (including commercial products). Run `git difftool --tool-help` to see what is available on your system.

```bash
git difftool --tool-help
# 'git difftool --tool=<tool>' may be set to one of the following:
                emerge
                opendiff
                vimdiff
                vimdiff2
                vimdiff3
```





**Committing Your Changes**

```bash
git commit 
```

```bash
git commit -v
```

Doing so also puts the diff of your change in the editor so you can see exactly what changes you’re committing.

**Skipping the Staging Area**

Adding the -a option to the git commit command makes Git automatically stage every file that is already tracked before doing the commit, letting you skip the git add part:

```bash
git commit -a -m 'Add new benchmarks'
```

**Removing Files**

To remove a file from Git, you have to remove it from your tracked files (more accurately, remove it from your staging area) and then commit

if you run git rm, it stages the file’s removal

```bash
git rm 
```

Another useful thing you may want to do is to keep the file in your working tree but remove it from your staging area.In other words, you may want to keep the file on your hard drive but not have Git track it anymore.



This is particularly useful if you forgot to add something to your .gitignore file and accidentally staged it, like a large log file or a bunch of .a compiled files. **To do this, use the --cached option:**

```bash
git rm --cached README
```

You can pass files, directories, and file-glob patterns to the git rm command. That means you can do things such as:

Note the backslash (\) in front of the *, This is nessary because Git does its own filename expansion in addition to your shell's filename expansion.



This command removes all files that have the .log extension in the log/ directory. 

```bash
git rm log/\*.log
```

Or, you can do something like this:

```bash
git rm \*~
```

This command removes all files whose names end with a ~.

**Moving Files**

If you want to rename a file in Git, you can run something like:

```bash
git mv file_from file_to
```

However, this is equivalent to running something like this:

```bash
mv README.md README
git rm README.md
git add README
```

**Viewing the Commit History**

```bash
git log
```



```bash
git log -p -2
```



```bash
git log --stat
```



```bash
git log --pretty=oneline
```



```bash
git log --pretty=format:"%h - %an, %ar : %s"
```



```bash
git log --pretty=format:"%h %s" --graph
```

