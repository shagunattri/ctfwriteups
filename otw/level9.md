### Level 9

This level utilises the concepts with utilising the best from the command line

We approach with grep to win stratergy and use the -e flag 

```
grep --help
-e, --regexp=PATTERN      use PATTERN for matching
```

For this challenge 

we use strings command 
```
$ man strings

 strings - print the strings of printable characters in files.
```

Piping and grep will get you the password using the grep -e flag and then specifying it with the "=" character

```
strings data.txt | grep -e "="
```