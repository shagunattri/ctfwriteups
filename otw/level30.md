### Level 30

Level Goal

There is a git repository at ssh://bandit30-git@localhost/home/bandit30-git/repo. The password 
for the user bandit30-git is the same as for the user bandit30.

Clone the repository and find the password for the next level.



```
$ ssh bandit30@bandit.labs.overthewire.org -p 2220
```

```
bandit30@bandit:~$ mkdir /tmp/hackmaggi
bandit30@bandit:~$ cd  /tmp/hackmaggi
bandit30@bandit:/tmp/hackmaggi$ git clone ssh://bandit30-git@localhost/home/bandit30-git/repo
Cloning into 'repo'...
bandit30-git@localhost password: 

remote: Counting objects: 4, done.
remote: Total 4 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (4/4), done.
bandit30@bandit:/tmp/hackmaggi$ cd repo/
bandit30@bandit:/tmp/hackmaggi/repo$ ls
README.md
bandit30@bandit:/tmp/hackmaggi/repo$ cat README.md 
just an epmty file... muahaha
bandit30@bandit:/tmp/hackmaggi/repo$ git tag
secret
bandit30@bandit:/tmp/hackmaggi/repo$ git show secret
47e603bb428404d265f59c42920d81e5
```