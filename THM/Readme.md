### Resources from THM👨‍💻

### Steganography
- https://0xrick.github.io/lists/stego/

### Vulnerability Searching

- [ExploitDB](https://www.exploit-db.com/)
    - ExploitDB tends to be very useful for hackers, as it often actually contains exploits that can be downloaded and used straight out of the box. It tends to be one of the first stops when you encounter software in a CTF or pentest.
- [NVD](https://nvd.nist.gov/vuln/search)
    - NVD keeps track of CVEs (Common Vulnerabilities and Exposures) 
- [CVE Mitre](https://cve.mitre.org/)

### Google Dorking
- What are Crawlers and how do They Work?
![2021-03-22 14_15_41-TryHackMe _ Google Dorking — Mozilla Firefox](https://user-images.githubusercontent.com/29366864/111964578-c5455d00-8b1a-11eb-8278-03e3044532ec.png)
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

### Important Files and Directories

- /etc/passwd - Stores user information - Often used to see all the users on a system
- /etc/shadow - Has all the passwords of these users
- /tmp - Every file inside it gets deleted upon shutdown - used for temporary files
- /etc/sudoers - Used to control the sudo permissions of every user on the system
- /home - The directory where all your downloads, documents etc are.The equivalent on Windows is C:\Users\<user>
- /root - The root user's home directory - The equivilent on Windows is C:\Users\Administrator
- /usr - Where all your software is installed
- https://imgur.com/e0l4Ybh/bin and /sbin - Used for system critical files - DO NOT DELETE
- /var - The Linux miscellaneous directory, a myriad of processes store data in /var
- $PATH - Stores all the binaries you're able to run - same as $PATH on Windows

### Important QnA's

- What hash format are modern Windows login passwords stored in? `NTLM`
- What are automated tasks called in Linux? `Cron Jobs`
- What number base could you use as a shorthand for base 2 (binary)? `Base 16`
- If a password hash starts with $6$, what format is it (Unix variant)? `sha512crypt`


### Tools & Important Commands

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

_echo_
- `echo -n hello` How would you output hello without a newline

_cat_
- `cat -n` What flag numbers all output lines?

_chmod_
- chmod allows you to set the different permissions for a file, and control who can read it. The syntax of this command is typically `chmod <permissions> <file>`

![2021-03-22 15_09_45-Readme md - Visual Studio Code](https://user-images.githubusercontent.com/29366864/111969873-b2ce2200-8b20-11eb-969e-3f81fc1a83c0.png)

_find_
- `find dir -user root` , to list every file owned by a specific user
- `find dir -group sudo` to list every file owned by a specific group
- `-perm` How do you find files that have specific permissions?
- `find /home` How would you find all the files in /home
- `find / -user paradox` How would you find all the files owned by paradox on the whole system

_grep_

- `find /* | grep test1234`
- `-n` What flag lists line numbers for every string found?
- `grep boop /tmp/aaaa` How would I search for the string boop in the file aaaa in the directory /tmp

_ps_
- To view a list of all system processes, you have to use the `-ef` flag

### Networking

_OSI_
- The `OSI (Open Systems Interconnection)` Model is a standardised model which we use to demonstrate the theory behind computer networking. In practice, it's actually the more compact TCP/IP model that real-world networking is based off; however the OSI model, in many ways, is easier to get an initial understanding from.

The OSI model consists of seven layers:

Table showing the OSI layers: 
|OSI|
|-----------|
|Application|
|Presentation|
|Session|
|Transport|
|Network|
|Data Link|
|Physical|

`A`nxious `P`ale `S`hakespeare `T`reated `N`ervous `D`runks `P`atiently

Layer 7 -- Application:

The application layer of the OSI model essentially provides networking options to programs running on a computer. It works almost exclusively with applications, providing an interface for them to use in order to transmit data. When data is given to the application layer, it is passed down into the presentation layer.

Layer 6 -- Presentation:

The presentation layer receives data from the application layer. This data tends to be in a format that the application understands, but it's not necessarily in a standardised format that could be understood by the application layer in the receiving computer. The presentation layer translates the data into a standardised format, as well as handling any encryption, compression or other transformations to the data. With this complete, the data is passed down to the session layer.

Layer 5 -- Session:

When the session layer receives the correctly formatted data from the presentation layer, it looks to see if it can set up a connection with the other computer across the network. If it can't then it sends back an error and the process goes no further. If a session can be established then it's the job of the session layer to maintain it, as well as co-operate with the session layer of the remote computer in order to synchronise communications. The session layer is particularly important as the session that it creates is unique to the communication in question. This is what allows you to make multiple requests to different endpoints simultaneously without all the data getting mixed up (think about opening two tabs in a web browser at the same time)! When the session layer has successfully logged a connection between the host and remote computer the data is passed down to Layer 4: the transport Layer.

Layer 4 -- Transport:

The transport layer is a very interesting layer that serves numerous important functions. Its first purpose is to choose the protocol over which the data is to be transmitted. The two most common protocols in the transport layer are TCP (Transmission Control Protocol) and UDP (User Datagram Protocol); with TCP the transmission is connection-based which means that a connection between the computers is established and maintained for the duration of the request. This allows for a reliable transmission, as the connection can be used to ensure that the packets all get to the right place. A TCP connection allows the two computers to remain in constant communication to ensure that the data is sent at an acceptable speed, and that any lost data is re-sent. With UDP, the opposite is true; packets of data are essentially thrown at the receiving computer -- if it can't keep up then that's its problem (this is why a video transmission over something like Skype can be pixelated if the connection is bad). What this means is that TCP would usually be chosen for situations where accuracy is favoured over speed (e.g. file transfer, or loading a webpage), and UDP would be used in situations where speed is more important (e.g. video streaming).

With a protocol selected, the transport layer then divides the transmission up into bite-sized pieces (over TCP these are called segments, over UDP they're called datagrams), which makes it easier to transmit the message successfully. 

Layer 3 -- Network:

The network layer is responsible for locating the destination of your request. For example, the Internet is a huge network; when you want to request information from a webpage, it's the network layer that takes the IP address for the page and figures out the best route to take. At this stage we're working with what is referred to as Logical addressing (i.e. IP addresses) which are still software controlled. Logical addresses are used to provide order to networks, categorising them and allowing us to properly sort them. Currently the most common form of logical addressing is the IPV4 format, which you'll likely already be familiar with (i.e 192.168.1.1 is a common address for a home router).

Layer 2 -- Data Link:

The data link layer focuses on the physical addressing of the transmission. It receives a packet from the network layer (that includes the IP address for the remote computer) and adds in the physical (MAC) address of the receiving endpoint. Inside every network enabled computer is a Network Interface Card (NIC) which comes with a unique MAC (Media Access Control) address to identify it.

MAC addresses are set by the manufacturer and literally burnt into the card; they can't be changed -- although they can be spoofed. When information is sent across a network, it's actually the physical address that is used to identify where exactly to send the information.

Additionally, it's also the job of the data link layer to present the data in a format suitable for transmission.

The data link layer also serves an important function when it receives data, as it checks the received information to make sure that it hasn't been corrupted during transmission, which could well happen when the data is transmitted by layer 1: the physical layer.

Layer 1 -- Physical:

The physical layer is right down to the hardware of the computer. This is where the electrical pulses that make up data transfer over a network are sent and received. It's the job of the physical layer to convert the binary data of the transmission into signals and transmit them across the network, as well as receiving incoming signals and converting them back into binary data.

_QnA's_

- Which layer would choose to send data over TCP or UDP? `4`
- Which layer checks received packets to make sure that they haven't been corrupted? `2`
- In which layer would data be formatted in preparation for transmission? `2`
- Which layer transmits and receives data? `1`
- Which layer encrypts, compresses, or otherwise transforms the initial data to give it a standardised format? `6`
- Which layer tracks communications between the host and receiving computers? `5`
- Which layer accepts communication requests from applications? `7`
- Which layer handles logical addressing? `3`
- When sending data over TCP, what would you call the "bite-sized" pieces of data? `Segments`
- Which layer would the FTP protocol communicate with? `7`
- Which transport layer protocol would be best suited to transmit a live video? `UDP`

This whole process is referred to as encapsulation; the process by which data can be sent from one computer to another.

![Encapsulation](https://muirlandoracle.co.uk/wp-content/uploads/2020/02/image.jpeg)

Notice that the encapsulated data is given a different name at different steps of the process. In layers 7,6 and 5, the data is simply referred to as data. In the transport layer the encapsulated data is referred to as a segment or a datagram (depending on whether TCP or UDP has been selected as a transmission protocol). At the Network Layer, the data is referred to as a packet. When the packet gets passed down to the Data Link layer it becomes a frame, and by the time it's transmitted across a network the frame has been broken down into bits.

When the message is received by the second computer, it reverses the process -- starting at the physical layer and working up until it reaches the application layer, stripping off the added information as it goes. This is referred to as de-encapsulation. As such you can think of the layers of the OSI model as existing inside every computer with network capabilities. Whilst it's not actually as clear cut in practice, computers all follow the same process of encapsulation to send data and de-encapsulation upon receiving it.

The processes of encapsulation and de-encapsulation are very important -- not least because of their practical use, but also because they give us a standardised method for sending data. This means that all transmissions will consistently follow the same methodology, allowing any network enabled device to send a request to any other reachable device and be sure that it will be understood -- regardless of whether they are from the same manufacturer; use the same operating system; or any other factors.

_QnA's_
- How would you refer to data at layer 2 of the encapsulation process (with the OSI model)? `Frames`
- How would you refer to data at layer 4 of the encapsulation process (with the OSI model), if the UDP protocol has been selected?  `Datagrams`
- What process would a computer perform on a received message? `De-encapsulation`
- Which is the only layer of the OSI model to add a trailer during encapsulation? `Data Link`


###  The TCP/IP Model

The TCP/IP model is, in many ways, very similar to the OSI model. It's a few years older, and serves as the basis for real-world networking. The TCP/IP model consists of four layers: Application, Transport, Internet and Network Interface. Between them, these cover the same range of functions as the seven layers of the OSI Model.

![tcp/ip](https://muirlandoracle.co.uk/wp-content/uploads/2020/02/image-4.png)

Note: Some recent sources split the TCP/IP model into five layers -- breaking the Network Interface layer into Data Link and Physical layers (as with the OSI model). This is accepted and well-known; however, it is not officially defined (unlike the original four layers which are defined in RFC1122). It's up to you which version you use -- both are generally considered valid.

You would be justified in asking why we bother with the OSI model if it's not actually used for anything in the real-world. The answer to that question is quite simply that the OSI model (due to being less condensed and more rigid than the TCP/IP model) tends to be easier for learning the initial theory of networking.

The two models match up something like this:

![osi](https://muirlandoracle.co.uk/wp-content/uploads/2020/02/image-3.png)

A layered model is great as a visual aid -- it shows us the general process of how data can be encapsulated and sent across a network, but how does it actually happen?

When we talk about TCP/IP, it's all well and good to think about a table with four layers in it, but we're actually talking about a suite of protocols -- sets of rules that define how an action is to be carried out. TCP/IP takes its name from the two most important of these: the Transmission Control Protocol (which we touched upon earlier in the OSI model) that controls the flow of data between two endpoints, and the Internet Protocol, which controls how packets are addressed and sent. There are many more protocols that make up the TCP/IP suite; we will cover some of these in later tasks. For now though, let's talk about TCP.

As mentioned earlier, TCP is a connection-based protocol. In other words, before you send any data via TCP, you must first form a stable connection between the two computers. The process of forming this connection is called the three-way handshake.

When you attempt to make a connection, your computer first sends a special request to the remote server indicating that it wants to initialise a connection. This request contains something called a SYN (short for synchronise) bit, which essentially makes first contact in starting the connection process. The server will then respond with a packet containing the SYN bit, as well as another "acknowledgement" bit, called ACK. Finally, your computer will send a packet that contains the ACK bit by itself, confirming that the connection has been setup successfully. With the three-way handshake successfully completed, data can be reliably transmitted between the two computers. Any data that is lost or corrupted on transmission is re-sent, thus leading to a connection which appears to be lossless.

![synack](https://muirlandoracle.co.uk/wp-content/uploads/2020/03/image-2.png)



_Network Services_

### Understanding SMB

SMB - Server Message Block Protocol - is a client-server communication protocol used for sharing access to files, printers, serial ports and other resources on a network.

https://searchnetworking.techtarget.com/definition/Server-Message-Block-Protocol

Servers make file systems and other resources (printers, named pipes, APIs) available to clients on the network. Client computers may have their own hard disks, but they also want access to the shared file systems and printers on the servers.

The SMB protocol is known as a response-request protocol, meaning that it transmits multiple messages between the client and server to establish a connection. Clients connect to servers using TCP/IP (actually NetBIOS over TCP/IP as specified in RFC1001 and RFC1002), NetBEUI or IPX/SPX.

![smb](https://i.imgur.com/XMnru12.png)

Once they have established a connection, clients can then send commands (SMBs) to the server that allow them to access shares, open files, read and write files, and generally do all the sort of things that you want to do with a file system. However, in the case of SMB, these things are done over the network.

_What runs SMB?_

Microsoft Windows operating systems since Windows 95 have included client and server SMB protocol support. Samba, an open source server that supports the SMB protocol, was released for Unix systems.

_QnA's_

- What does SMB stand for? `Server Message Block`
- What type of protocol is SMB? `response-resquest`
- What do clients connect to servers using? `NETBIOS over TCP/IP`
- What systems does Samba run on? `Unix`