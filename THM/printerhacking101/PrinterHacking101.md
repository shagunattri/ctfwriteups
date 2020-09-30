### Printer Hacking 101

The reason behind the printers' vulnerability which effected those 50,000 printers, was simply an open IPP port.

"The Internet Printing Protocol (IPP) - is a specialized Internet protocol for communication between client devices and printers. It allows clients to submit one or more print jobs to the printer or print server, and perform tasks such as querying the status of a printer, obtaining the status of print jobs, or canceling individual print jobs."

When an IPP port is open to the internet, it is possible for anyone to print to the printer or even transfer malicious data through it (using it as a middleman for attacks).

A recent study by VARIoT (Vulnerability and Attack Repository for IoT) showed that there are still around 80 thousand vulnerable printers opened to the world. Most of them appear to run the CUPS server (which is a simple UNIX printing system).


An open IPP port can expose a lot of sensitive information such as printer name, location, model, firmware version, or even printer wifi SSID.

				Locating and Exploiting local network printers

Github: https://github.com/RUB-NDS/PRET <- We'll be using this awesome toolkit throughout this next bit!

The Printer Exploitation Toolkit is a handy tool that is used for both local targeting and exploitation.

You can install it by running the following commands:

```bash
git clone https://github.com/RUB-NDS/PRET && cd PRET
python2 -m pip install colorama pysnmP
```

- Locating printers

Simply running python pret.py will start an automatic printer discovery in your local network.
It is also possible by running an Nmap scan on your whole network, but unfortunately, it might take a longer time. This is because the pret.py scan is focused on the ports which printer communication on by default, thus making it immensely faster.


- Exploiting

Now, it is time to finally exploit the printer.
There are exactly three options you need to try when exploiting a printer using PRET:
1. ps (Postscript)
2. pjl (Printer Job Language)
3. pcl (Printer Command Language)

You need to try out all three languages just to see which one is going to be understood by the printer.

Sample Usage:

```bash
python pret.py {IP} pjl
python pret.py laserjet.lan ps
python pret.py /dev/usb/lp0 pcl
```

(Last option works if you have a printer connected to your computer already)

After running this command, you are supposed to get shell-alike output with different commands. Run help to see them.

s you can see, PRET allows us to interact with the printer as if we were working with a remote directory. We can now store, delete, or add information on the printer. 
(For more commands and examples read the project's GitHub)

You can possibly try PRET on your printer at home, just to test its security. 

Here's a nice cheat sheet: hacking-printers.net/wiki/index.php/Printer_Security_Testing_Cheat_Sheet


### Practice - Bad Example of IPP configuration
I have attached a poorly configured CUPS server VM in this task.
Deploy it and access the IPP port at 10.10.105.126:631. See if you can retrieve any sensitive information.
(PRET isn't going to work here as it is using port 9000 by default)

Note also: An ssh access to the machine allows you to set up ssh tunneling, opening all CUPS features and providing you an ability to use attached printers. SSH password can be easily brute-forced (weak password).
An example command for ssh tunneling:

`ssh printer@10.10.105.126 -T -L 3631:localhost:631`

After doing so, you can easily add the CUPS server in your VM's printer settings and even try to send some printing jobs.
Try out different techniques and have fun!
