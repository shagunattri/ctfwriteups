###Level 28

Level Goal

There is a git repository at ssh://bandit28-git@localhost/home/bandit28-git/repo. The password for the user bandit28-git is the same as for the user bandit28.

Clone the repository and find the password for the next level.


```
$ ssh bandit28@bandit.labs.overthewire.org -p 2220
```

```
bandit28@bandit:~$ mkdir /tmp/repo1337
bandit28@bandit:~$ cd /tmp/repo1337
bandit28@bandit:/tmp/repo1337$ git clone ssh://bandit28-git@localhost/home/bandit28-git/repo
Cloning into 'repo'...
bandit28-git@localhost password: 

remote: Counting objects: 9, done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 9 (delta 2), reused 0 (delta 0)
Receiving objects: 100% (9/9), done.
Resolving deltas: 100% (2/2), done.
bandit28@bandit:/tmp/repo1337$ ls
repo
bandit28@bandit:/tmp/repo1337$ cd repo/
bandit28@bandit:/tmp/repo1337/repo$ ls
README.md
bandit28@bandit:/tmp/repo1337/repo$ cat README.md 
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: xxxxxxxxxx

bandit28@bandit:/tmp/repo1337/repo$ git log
commit 073c27c130e6ee407e12faad1dd3848a110c4f95
Author: Morla Porla <morla@overthewire.org>
Date:   Tue Oct 16 14:00:39 2018 +0200

    fix info leak

commit 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
Author: Morla Porla <morla@overthewire.org>
Date:   Tue Oct 16 14:00:39 2018 +0200

    add missing data

commit b67405defc6ef44210c53345fc953e6a21338cc7
Author: Ben Dover <noone@overthewire.org>
Date:   Tue Oct 16 14:00:39 2018 +0200

    initial commit of README.md
bandit28@bandit:/tmp/repo1337/repo$ git checkout 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
Previous HEAD position was 073c27c... fix info leak
HEAD is now at 186a103... add missing data
bandit28@bandit:/tmp/repo1337/repo$ cat README.md 
# Bandit Notes
Some notes for level29 of bandit.

## credentials

- username: bandit29
- password: bbc96594b4e001778eee9975372716b2
```