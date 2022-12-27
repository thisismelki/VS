---
title: "A Pretty Good Intro to PGP"
date: 2022-12-25T06:48:05-05:00
draft: true
---

```bash
gpg -gen-key
# questions prompted
```

## Expiration
keys should expire incase you lose a private key.
you can always edit expiry date.

## Publishes key to keyserver
```bash
gpg --send-key C19B0406
```

## Check for key with email address
```bash
gpg --list-keys <email-address>
```
Example output
![[Pasted image 20221225065958.png]]


## Signing others keys
1. Verify the identification of the person.
2. Verify the key of the person to prevent accidental key.



```bash
gpg --search hello@harryschwartz.com

```

example output
![[Pasted image 20221225070447.png]]



key ring local keys saved to computer.


```bash
gpg --edit-key --ask-cert-level harry@thoughtbot.com

```


## shows fingerprinnt
```bash
gpg> fpr
```

![[Pasted image 20221225072909.png]]

