### Level 14

In this level in order to retreive the password(Flag) we are requried to enter the password for the by connecting to localhost to port 30000

We use netcat to do this and rely on passing the password of level 14 to get the password for level 15

```
$ man nc
 nc - TCP/IP swiss army knife
```
```
$ nc localhost 30000 < /etc/bandit_pass/bandit14
```