---
title: "Methods for acessing the index in for loop for python"
date: 2022-02-13T19:56:13-05:00
draft: false
---

# accessing the index in for loops?
```python
for idx, val in enumerate(ints):
    print(idx, val)
# or 
for index, item in enumerate(items):
    print(index, item)
# or to start at 1
for count, item in enumerate(items, start=1):
    print(count, item)

```