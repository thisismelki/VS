---
title: "Using virutal environments with venv module in python"
date: 2022-02-13T19:56:13-05:00
draft: false
---

#  How to Use Virtual Environments with the Built-In venv Module

```bash
mkdir my_project 
# or git clone URL
python3 -m venv my_project/venv
cd my_project

source my_project/venv/bin/activate


```


```bash
python3 -m venv .venv
source .venv/bin/activate

```

```bash
python3 -m venv .
source bin/activate
```

To find current location
```bash
which python
```

To install packages with pip
```bash
pip install -r requirements.tx
```