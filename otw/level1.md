### Level 1

Level explains that the password is in the - file but to cat and get the output give out an error as Dash (-) character at the end of the commands is a popular convention to refer stdin or stdout. Dash is not a special character for filesystem or kernel.

When cat sees the string - as a filename, it treats it as a synonym for stdin. To get around this, you need to alter the string that cat sees in such a way that it still refers to a file called -. The usual way of doing this is to prefix the filename with a path - ./-, or /home/Tim/-. This technique is also used to get around similar issues where command line options clash with filenames, so a file referred to as ./-e does not appear as the -e command line option to a program, for example.

Resources:
[Dashed filename in Linux](https://linux-tips.com/t/dashed-filename-in-linux/188)
[Usage of (-) in filename](https://unix.stackexchange.com/questions/16357/usage-of-dash-in-place-of-a-filename)

Right Way to enter the command for this challenge:

```
cat ./-

```