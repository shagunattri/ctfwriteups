### Resources from THM




### Steganography

https://0xrick.github.io/lists/stego/


### Vulnerability Searching

- [ExploitDB](https://www.exploit-db.com/)
    - ExploitDB tends to be very useful for hackers, as it often actually contains exploits that can be downloaded and used straight out of the box. It tends to be one of the first stops when you encounter software in a CTF or pentest.
- [NVD](https://nvd.nist.gov/vuln/search)
    - NVD keeps track of CVEs (Common Vulnerabilities and Exposures) 
- [CVE Mitre](https://cve.mitre.org/)

### Google Dorking
- What are Crawlers and how do They Work?
- ![2021-03-22 14_15_41-TryHackMe _ Google Dorking — Mozilla Firefox](https://user-images.githubusercontent.com/29366864/111964578-c5455d00-8b1a-11eb-8278-03e3044532ec.png)
- SEO
    - How easy it is to crawl your website (or if crawling is even allowed ...but we'll come to this later) through the use of "Sitemaps"
    - What kind of keywords your website has
    - How responsive your website is to the different browser types
    - https://web.dev/
- Robots.txt
    - he text file defines the permissions the "Crawler" has to the website. For example, what type of "Crawler" is allowed (I.e. You only want Google's "Crawler" to index your site and not MSN's). Moreover, Robots.txt can specify what files and directories that we do or don't want to be indexed by the "Crawler".
- SiteMap
 - Comparable to geographical maps in real life, “Sitemaps” are just that - but for websites!
- Dorking
    - filetype:
    - cache:
    - intitle:
    - eg: site:bbc.co.uk filetype:pdf
    - eg: intitle:index.of

### Important QnA's

- What hash format are modern Windows login passwords stored in? `NTLM`
- What are automated tasks called in Linux? `Cron Jobs`
- What number base could you use as a shorthand for base 2 (binary)? `Base 16`
- If a password hash starts with $6$, what format is it (Unix variant)? `sha512crypt`


### Tools & important Commands


_scp_
- SCP is a tool used to copy files from one computer to another.
- `-r` What switch would you use to copy an entire directory?

_fdisk_
- fdisk is a command used to view and alter the partitioning scheme used on your hard drive.
- `-l` What switch would you use to list the current partitions?

_nano_
- nano is an easy-to-use text editor for Linux. There are arguably better editors (Vim, being the obvious choice); however, nano is a great one to start with.
- `-B`What switch would you use to make a backup when opening a file with nano?

_netcat_
- Netcat is a basic tool used to manually send and receive network requests.
- `nc -l -p 12345` What command would you use to start netcat in listen mode, using port 12345?
