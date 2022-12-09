---
title: "Common curl flags in the wild"
date: 2022-02-13T19:56:13-05:00
draft: false
---


# Common curl flags encounter in the wild
```bash
-X/--request <command> 
# -X => communicates with the server with custom request method such as PUT, DELETE,PROPFIND,COPY,MOVE 
# If this option is used several times, the last one will be used.
curl -X GET "https://api.spotify.com/v1/users/tuggareutangranser" -H "Authorization: Bearer {your access token}"


```


```bash
-H/--header <header>
# For (HTTP) => adds an extra header.

# Note if the header already exists it will be replace by the new one.
# Replacement should not be done unless you know the sideeffects of said action.
# to remove internal header do the following:
-H "Host:"
# do not add newlines or carriage returns curl adds proper end-of-line marker
# See also the -A/--user-agent and -e/--referer options.

# -H may be used mutiple times for mutiple header operations.


curl -X GET "https://api.spotify.com/v1/users/tuggareutangranser" -H "Authorization: Bearer {your access token}"


```