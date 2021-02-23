#!/usr/bin/env python3
import hashlib
from bs4 import BeautifulSoup
import requests

#host details
host = "139.59.162.195"
port = 31380

#get string
s = requests.session()
res =s.get("http://{}:{}".format(host,port))
soup = BeautifulSoup(res.text,"html.parser")

#encrypt the string with hashlib
str = soup.h3.string
hash = hashlib.md5(str.encode('utf-8')).hexdigest()


#post data
data = {'hash':hash,"submit":"Submit"}
html = s.post("http://{}:{}".format(host,port),data=data)

#print data
print(html.text)