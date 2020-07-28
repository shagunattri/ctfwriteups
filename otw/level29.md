### Level 29

Level Goal

There is a git repository at ssh://bandit29-git@localhost/home/bandit29-git/repo. The password for the user bandit29-git is the same as for the user bandit29.

Clone the repository and find the password for the next level.

```
$ ssh bandit29@bandit.labs.overthewire.org -p 2220
```

```
bandit29@bandit:~$ mkdir /tmp/hack76354
bandit29@bandit:~$ cd /tmp/hack76354
bandit29@bandit:/tmp/hack76354$ git clone ssh://bandit29-git@localhost/home/bandit29-git/repo
Cloning into 'repo'...
bandit29-git@localhost password: 

remote: Counting objects: 16, done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 16 (delta 2), reused 0 (delta 0)
Receiving objects: 100% (16/16), done.
Resolving deltas: 100% (2/2), done.
bandit29@bandit:/tmp/hack76354$ cd repo/
bandit29@bandit:/tmp/hack76354/repo$ cat README.md 
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: <no passwords in production!>

bandit29@bandit:/tmp/hack76354/repo$ git branch -r
  origin/HEAD -> origin/master
  origin/dev
  origin/master
  origin/sploits-dev
bandit29@bandit:/tmp/hack76354/repo$ git checkout dev
Branch dev set up to track remote branch dev from origin.
Switched to a new branch 'dev'
bandit29@bandit:/tmp/hack76354/repo$ cat README.md 
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: 5b90576bedb2cc04c86a9e924ce42faf
```