Remember the [Code of Conduct](/conduct) and the [Computer Misuse Act](https://www.legislation.gov.uk/ukpga/1990/18) when using these tools. They are to be used for education only, on your own systems or where you are sure you have explicit permission.

Once you're sure you're working ethically and within the law... have fun!

# Enumeration and Privilege Escalation

[Nmap](https://nmap.org/) - A tool for enumerating networks, with lots of built in scripts for enriching information - this is the first step in most security assessments!

[Gobuster](https://github.com/OJ/gobuster) - Insanely fast tool for discovering webpages on a domain - often the first step when exploring a web app

[ldapsearch](https://linux.die.net/man/1/ldapsearch) & [ldapenum](https://sourceforge.net/projects/ldapenum/)  - Tools for enumerating system and domain controllers over LDAP - useful for Windows boxes!

[pspy](https://github.com/DominicBreuker/pspy) - For monitoring processes on a Linux machine - useful for discovering interesting things post-exploitation!

[PrivEsc Scripts Suite](https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite)- A list of brilliant scripts for enumerating ahead of privelege escalation, including linPEAS and winPEAS. (It pairs nicely with [this](https://book.hacktricks.xyz/)) 

[Bloodhound](https://github.com/BloodHoundAD/BloodHound) - Brilliant tool for visualising exploitation paths in Active Directory, and suggesting exploits

# Networking and Web Scraping

[Burp Suite](https://portswigger.net/burp) - A powerful tool for capturing and analysing HTTP requests, and modifying them on the fly - this is an essential in your toolkit!

[Wireshark](https://www.wireshark.org/) - An incredibly powerful tool for analysing network traffic

[Beautiful Soup](https://www.crummy.com/software/BeautifulSoup/) - The essential web scraping library, with great documentation

[Scrapy](https://scrapy.org/) - A powerful web scraping framework

# Exploitation

[sqlmap](http://sqlmap.org/) - A tool for automatically detecting and performing SQL injection attacks

[Metasploit](https://www.metasploit.com/) - An extensive set of exploit implementations, downloadable for free via Metasploit Framework

[CrackMapExec](https://github.com/byt3bl33d3r/CrackMapExec)- A mindblowingly versatile tool used for enumerating and exploiting Windows Machines and Active Directory - with incredible [documentation](https://mpgn.gitbook.io/crackmapexec/) !

[Impacket](https://github.com/SecureAuthCorp/impacket)- A collection of brilliant Python Scripts, perfect for pulling secrets out of Windows Machines (and much more) . We used many of these scripts during our Enumeration Session

[tomcatWarDeployer](https://github.com/mgeeky/tomcatWarDeployer) - For deploying malicious payloads to compromised Tomcat webservers

# Social Engineering + OSINT

[Social Engineering Toolkit](https://github.com/trustedsec/social-engineer-toolkit) - A suite of social engineering and OSINT tools, including phishing and fake login pages!

# Reverse Engineering

[Ghidra](https://ghidra-sre.org/) - A suite of software reverse engineering tools, developed by the NSA

# Utility

[Cyberchef](https://gchq.github.io/CyberChef/) - A GCHQ released tool that's useful for encodings, cryptography and a ton of other useful tools!

[jwt](https://jwt.io/) - A tool useful for decoding JWT tokens used in web applications

[John the Ripper](https://www.openwall.com/john/) - A great password cracking tool, supporting hundreds of hash and cipher types

[Regex101](https://regex101.com/) - A lovely little regex checker, for help with all those greps

[JSLinux](https://bellard.org/jslinux/vm.html?cpu=riscv64&url=fedora29-riscv-2.cfg&mem=256%E2%80%8Bca)- Try Linux out in your browser! (Although we recommend installing it properly) 

[tmux](https://www.youtube.com/watch?v=Lqehvpe_djs) - A video guide to tmux from Ippsec, a useful tool for terminal productivity

[HTTPBin](https://httpbin.org/) - A website for testing HTTP requests

[CTF Tools](https://github.com/Twigonometry/CTF-Tools) - A work-in-progress repo with various cybersecurity tools, including a password cracker and a repeater, built by Mac

# Lists within lists!

[Red Teaming Toolkit](https://github.com/infosecn1nja/Red-Teaming-Toolkit) - A collection of amazing repositories and tools for all your hacking needs

[SecLists](https://github.com/danielmiessler/SecLists) - Thought this list was long? This repo compiles an egregious number of passwords, URLs, and payloads for fuzzing, password cracking, and everything in between

[ExtendsClass](https://extendsclass.com/) - A host of free online developer tools for testing Regexes, API calls, XML validation, and more!
