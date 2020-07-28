### Level 13

For this level once logging in to the server we are given with a private SSH key which we use to login to the next machine which hosts the password in 
```/etc/bandit_pass/bandit14```.Once we log in with the ssh key,navigate to the directory and cat the password.

```
$ ls
 ssh.private
$ ssh -i sshkey.private bandit14@localhost
```
Once we man the ssh command we find that the parameter -i is used to
```
$man ssh

-i identity_file

 Selects a file from which the identity (private key) for public key authentication is read.The default is ~/.ssh/identity for protocol version 1, and ~/.ssh/id_dsa, ~/.ssh/id_ecdsa,~/.ssh/id_ed25519 and ~/.ssh/id_rsa for protocol version 2. 
 Identity files may also be specified on a per-host basis in the configuration file.It is possible to have multiple -i options(and multiple identities specified in configuration files).If no certificates have been explicitly specified by the CertificateFile directive, ssh will also try to load certificate information from the filename obtained by appending -cert.pub to identity filenames.
```

We can now navigate and look for the password
```
cat /etc/bandit_pass/bandit14
```