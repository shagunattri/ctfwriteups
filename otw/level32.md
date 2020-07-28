### Level 32

After all this git stuff its time for another escape. Good luck!


We get an interactive shell by inserting $0 in the fake shell, then we run vim 
end read the password for the next level.

```
$ ssh bandit32@bandit.labs.overthewire.org -p 2220

WELCOME TO THE UPPERCASE SHELL
>> ls
sh: 1: LS: not found
>> $0
$ vim

# In vim enter the following command :
# :r /etc/bandit_pass/bandit33

c9c3199ddf4121b10cf581a98d51caee
```