### Level 15

We are required to use the openssl connection to get the flag stored in the host directory.

```
$ man openssl

openssl - OpenSSL command line tool
```

```
$ openssl> s_client help
```
Provides the options with s_client ssl


Gives you the flag by connecting to the localhost and moving to the directory for the password
```
$ openssl s_client -connect localhost:30001 -quiet < /etc/bandit_pass/bandit15
```