### Level 18

This level is a little tricky where in terms to aceess the readme file you need to disable the pseudo terminal allocation using the -T flag.

For the file you ssh into the level 18 using additional parameters

```
$ ssh -T bandit18@bandit.labs.overthewire.org -p 2220 /bin/sh 

Supply password of level 17

$ ls

$ cat readme 

$ IueksS7Ubh8G3DCwVzrTd8rAVOwq3M5x


```


You have the password for the next level