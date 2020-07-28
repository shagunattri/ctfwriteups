### Level 4 

As the password is in a human readable file in the inhere directory.

We first navigate to the directory and lis the files and now in order to find the human readable file use the following command 

```
find . -type f | xargs file
```

To know about the xargs  command and -type f flag man the respective pages for a clear understanding.

As file07 is highlighted to be ASCII file it is human readable and cat of -file07 reveals the password