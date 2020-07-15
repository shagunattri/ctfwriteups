from base64 import b64encode
import math

exploit = input('? ')
if eval(b64encode(exploit.encode('UTF-8'))) == math.pi:
  print(open('flag.txt').read())


Put two and two together and make pi.

nc 35.221.81.216 30718

 You will win if you can hack the script and make them output the content 
 of flag.txt. 
 
 
qI'm praying for your good fortune :)


SHA1SUMS:

9bf96f8db840d01960bff400db3b319efeb8a2a0 *reversing
