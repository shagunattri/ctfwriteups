#!/usr/bin/env python2

import string

def caesar(cleartext, shift):
  ciphertext = ''
  for c in cleartext:
    if c not in string.ascii_letters:
      ciphertext += c
    else:
      if c in string.ascii_lowercase:
        start = ord('a')
      else:
        start = ord('A')
      ciphertext += chr(((ord(c) - start + shift) % 26) + start)

  return ciphertext

with open('./src.txt') as fd:
  cleartext = fd.read()

ciphertext = caesar(cleartext, 19)

with open('./enc.txt', 'w') as fd:
  fd.write(ciphertext)

