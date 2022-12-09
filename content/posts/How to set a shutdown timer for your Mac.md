---
title: "How to enable & disable a shutdown timer via commandline for macos"
date: 2022-11-23T19:56:13-05:00
draft: false
---

# How to set a shutdown timer for your Mac



```bash
sudo shutdown -s +60
```

-s => sleep

-h => shut it down completely

-r => restart



+60 => 60 minutes

## disable a shutdown timer



```bash
sudo killall shutdown
```

