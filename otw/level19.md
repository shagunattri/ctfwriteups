### Level 19

This is pretty easy all you need to do is run the executable and use the elevated permission to look at the password of the next level.


```
$ ./bandit20-do id

uid=11019(bandit19) gid=11019(bandit19) euid=11020(bandit20) groups=11019(bandit19)

```

To get the password cat the file at the bandit_pass directory

```
$ ./bandit20-do cat /etc/bandit_pass/bandit20

GbKksEFF4yrVs6il55v6gwY5aVje5f0j

```