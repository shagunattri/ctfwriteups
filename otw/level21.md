### Level 21

Though cron might be new concept for the begineers, the way you get the password is pretty basic and requires file navigation skills and understanding the outputs


```
cron 

daemon to execute scheduled commands (Vixie Cron)

```

Initially you navigate to the /etc/cron.d/ directory and list the files

```
$ ls /etc/cron.d/

atop  cronjob_bandit22  cronjob_bandit23  cronjob_bandit24

```

cronjob_bandit22 is what we are interested in.

```
$ cat cronjob_bandit22

@reboot bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null
* * * * * bandit22 /usr/bin/cronjob_bandit22.sh &> /dev/null

```

```
$ cat /usr/bin/cronjob_bandit22.sh 

#!/bin/bash
chmod 644 /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
cat /etc/bandit_pass/bandit22 > /tmp/7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv


```

```
$ cat /tmp/t7O6lds9S0RqQh9aMcz6ShpAoZKF7fgv
Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI 
```