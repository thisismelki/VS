---
title: "Configuring SSH for remote logins"
date: 2022-02-23T19:56:13-05:00
draft: false
---

### Configuring SSH for Remote Logins

You can manually start the SSH service with `systemctl start ssh` or configure it to start at boot time with `systemctl enable ssh`.

The SSH service has a relatively sane default configuration, but  given its powerful capabilities and sensitive nature, it is good to know what you can do with its configuration file, `/etc/ssh/sshd_config`. All the options are documented in sshd_config(5) (see [*Manual Pages*](https://portal.offensive-security.com/courses/pen-103/books-and-videos/modal/modules/helping-yourself-and-getting-help/documentation-sources/manual-pages)).

The default configuration allows password-based logins. If this is not wanted, you can disable this by setting `PasswordAuthentication` to `no`.

To apply the new settings, you should run `systemctl reload ssh`.



# **Generating New SSH Host Keys**

Each SSH server has its own cryptographic keys; they are named "SSH host keys" and are stored in `/etc/ssh/ssh_host_*`.

```bash
passwd
rm /etc/ssh/ssh_host_*
dpkg-reconfigure openssh-server
systemct restart ssh
```

