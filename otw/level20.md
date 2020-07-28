### Level 20 

This level begins with an easy concept and tries to add additional queries and methods to fetch passwords using tools like nc,grep and cat.

```
$ ls

suconnect 
```

```
$ ./suconnect

Usage: ./suconnect <portnumber> 
This program will connect to the given port on localhost using TCP. If it receives the correct 
password from the other side, the next password is transmitted back.

```
We need two session where a netcat instance listens on a port and cat the output while the other ssh session executes the suconnect with the port number that the netcat is listening to cat the password.



## netstat -tulpn  Shows you what ports (tcp/udp) are opened on localhost versus having to do a portscan with nmap to localhost


INSTANCE 1

```
$ cat /etc/bandit_pass/bandit20 | nc -l localhost -p 1313
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr  => Password for next level


```


INSTANCE 2

```
$ ./suconnect 1313                                                                     
Read: GbKksEFF4yrVs6il55v6gwY5aVje5f0j                                                                  
Password matches, sending next password

```