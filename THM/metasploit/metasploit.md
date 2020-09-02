Metasploit does support different types of port scans from within the auxiliary modules. Metasploit can also import other scans from nmap and Nessus just to name a few.  

msfdb init

msfconsole -h

msfconsole -q 
    -q, --quiet                      Do not print the banner on startup

db_status
check that we've connected to the database

? help menu

```bash
 search
Usage: search [<options>] [<keywords>:<value>]

Prepending a value with '-' will exclude any matching results.
If no options or keywords are provided, cached results are displayed.

OPTIONS:
  -h                Show this help information
  -o <file>         Send output to a file in csv format
  -S <string>       Regex pattern used to filter search results
  -u                Use module if there is one result

Keywords:
  aka         :  Modules with a matching AKA (also-known-as) name
  author      :  Modules written by this author
  arch        :  Modules affecting this architecture
  bid         :  Modules with a matching Bugtraq ID
  cve         :  Modules with a matching CVE ID
  edb         :  Modules with a matching Exploit-DB ID
  check       :  Modules that support the 'check' method
  date        :  Modules with a matching disclosure date
  description :  Modules with a matching description
  fullname    :  Modules with a matching full name
  mod_time    :  Modules with a matching modification date
  name        :  Modules with a matching descriptive name
  path        :  Modules with a matching path
  platform    :  Modules affecting this platform
  port        :  Modules with a matching port
  rank        :  Modules with a matching rank (Can be descriptive (ex: 'good') or numeric with comparison operators (ex: 'gte400'))
  ref         :  Modules with a matching ref
  reference   :  Modules with a matching reference
  target      :  Modules affecting this target
  type        :  Modules of a specific type (exploit, payload, auxiliary, encoder, evasion, post, or nop)

Examples:
  search cve:2009 type:exploit
  search cve:2009 type:exploit platform:-linux
```

    use           Interact with a module by name or search term/index

    info          Displays information about one or more modules

    connect       Communicate with a host

 	

Entirely one of the commands purely utilized for fun, what command displays the motd/ascii art we see when we start msfconsole (without -q flag)?
>banner


    set           Sets a context-specific variable to a value

    setg          Sets a global variable to a value

    get           Gets the value of a context-specific variable

    unset         Unsets one or more context-specific variables

    spool         Write console output into a file as well the screen


Leaving a Metasploit console running isn't always convenient and it can be helpful to have all of our previously set values load when starting up Metasploit. What command can we use to store the settings/active datastores from Metasploit to a settings file? This will save within your msf4 (or msf5) directory and can be undone easily by simply removing the created settings file
>save


Easily the most common module utilized, which module holds all of the exploit code we will use?
>exploit

Used hand in hand with exploits, which module contains the various bits of shellcode we send to have executed following exploitation?
>payload


Which module is most commonly used in scanning and verification machines are exploitable? This is not the same as the actual exploitation of course.
>Auxiliary

One of the most common activities after exploitation is looting and pivoting. Which module provides these capabilities?
>Post

Commonly utilized in payload obfuscation, which module allows us to modify the 'appearance' of our exploit such that we may avoid signature detection?
>Encoder


which module is used with buffer overflow and ROP attacks?
>ROP

Not every module is loaded in by default, what command can we use to load different modules?
>load
    load          Load a framework plugin

