---
title: "About named pipes"
date: 2022-02-21T19:56:13-05:00
draft: false
---


# named pipes

  Named pipes allow transfer of data between processes in a FIFO manner and synchronization of process execution.



 Named pipes differ from standard unnamed pipes, created using the `pipe()` function, in that they involve the creation of a real file that is available for I/O operations to properly authorized processes.   



You give the FIFO a name and an access mode when you create it.



An *unnamed pipe* is accessible only by the process that created the pipe and its child processes.

```bash
```

