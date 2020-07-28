### Level 7 


The main factor here to find the password is grep as the technique is also known as "grep to win"

Grep is pretty useful as you will see in this level

We are required to find the flag in the text file that is next to the word millionth

We will follow the grep to win procedure 

```
cat data.txt | grep "millionth"
```
this command pipes the output of the file and uses grep to look for the term millionth and displays the results resulting in a hashed password for the next level