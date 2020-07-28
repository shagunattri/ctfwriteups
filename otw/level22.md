### Level 22

For this level you need to uderstand about cron and 
understanding shell scripts

As we are told to look into the /etc/cron.d/.

```
$ cd /etc/cron.d/ 
$ ls
atop  cronjob_bandit22  cronjob_bandit23  cronjob_bandit24
```

We are interested in the cronjob_bandit23 file

```
$ cat cronjob_bandit23

@reboot bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
* * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
```

As the cat refers to the shell script we investigate and try to 
understand the shell script usage.

```
$ cat /usr/bin/cronjob_bandit23.sh

#!/bin/bash

myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget

```

We have myname variable which is used to calculate the md5sum 
and then is referred to the tmp directory where we can find the password 
for the next level.

```
$myname #Empty variable

$ myname=bandit23

$ echo I am user $myname | md5sum | cut -d ' ' -f 1
8ca319486bfbbc3663ea0fbe81326349
```

This md5sum is a file in the tmp directory which stores the password

```
$ cat /tmp/8ca319486bfbbc3663ea0fbe81326349
jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n

```