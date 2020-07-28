### Level 17

On connecting to level 17

```
$ ls

passwords.old passwords.new

```

To get to the next level we will see ‘Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19


To find the key

```
$ grep -vf passwords.old passwords.new

```

Command and the flags used:

```
Here grep prints the lines matching a pattern 

-v is for Invert the sense of matching, to select non-matching lines.  (-v is specified by POSIX.)

-f FILE, --file=FILE
       Obtain patterns from FILE, one per line.  The empty file contains  zero  patterns,  and  therefore
       matches nothing.  (-f is specified by POSIX.)


grep searches the named input FILEs (or standard input if no files are named, or if a single hyphen-minus
(-) is given as file name) for lines containing a match to the given PATTERN.  By  default,  grep  prints
the matching lines.

```
 
Now with the key ssh into the next level and you will see the Byebye!’ when trying to log into bandit18, this is related to the next level, bandit19