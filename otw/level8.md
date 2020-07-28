### Level 8

This level deals with sorting and piping the data from a document to find the required password

Here we can analyze the password by sorting the data and counting the uniqueness of these hashes to eventually find a hash with the count of 1

```
sort data.txt | uniq -c
```