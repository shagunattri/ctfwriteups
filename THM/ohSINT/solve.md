### OhSINT

>Open-source intelligence (OSINT) is data collected from publicly available sources to be used in an intelligence context.[1] In the intelligence community, the term "open" refers to overt, publicly available sources (as opposed to covert or clandestine sources). It is not related to open-source software or collective intelligence. 



We have a Windows XP titled image and that is all the trail we have to further find the answers by OSINTing.


EXIFTOOL Scan

```bash
ExifTool Version Number         : 12.00
File Name                       : WindowsXP.jpg
Directory                       : .
File Size                       : 229 kB
File Modification Date/Time     : 2020:09:10 18:08:49+05:30
File Access Date/Time           : 2020:09:12 15:21:54+05:30
File Inode Change Date/Time     : 2020:09:12 15:21:54+05:30
File Permissions                : rw-r--r--
File Type                       : JPEG
File Type Extension             : jpg
MIME Type                       : image/jpeg
XMP Toolkit                     : Image::ExifTool 11.27
GPS Latitude                    : 54 deg 17' 41.27" N
GPS Longitude                   : 2 deg 15' 1.33" W
Copyright                       : OWoodflint
Image Width                     : 1920
Image Height                    : 1080
Encoding Process                : Baseline DCT, Huffman coding
Bits Per Sample                 : 8
Color Components                : 3
Y Cb Cr Sub Sampling            : YCbCr4:2:0 (2 2)
Image Size                      : 1920x1080
Megapixels                      : 2.1
GPS Latitude Ref                : North
GPS Longitude Ref               : West
GPS Position                    : 54 deg 17' 41.27" N, 2 deg 15' 1.33" W
```



What is this users avatar of?

Copyright info gives us the twitter page of the user and has cat as avatar so 

`cat`

What city is this person in?

use the BSSID and figure out the location using wiggle.net 

`London`

Whats the SSID of the WAP he connected to?

Map shows the wifi connected to 

`UnileverWi<redacted>`

What is his personal email address?

Look at the Github readme 

`OWoodflint@<redacted>`

What site did you find his email address on?

`Github`

Where has he gone on holiday?

Check out the blog 

`New York`

What is this persons password?

Check out the blog once again 

`pennYDr0pp<redacted>`

