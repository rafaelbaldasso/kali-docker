# Building
`git clone httos://github.com/rafaelbaldasso/kali-docker`  
`cd kali-docker`  
`docker build -t kali .`  

# Running
`docker run -it --rm kali`  

# Tools
- git
- netexec
- nmap
- ssh
- python3, python3-pip, python3-venv
- pip3: requests, shcheck, ultimate_sitemap_parser
- python2.7, pip2
- ruby
- metasploit-framework, postgresql
- sslscan
- postfix
- golang
- subfinder
- nano
- httpx
- seclists
- hydra
- ffuf
- gobuster
- dirb
- searchsploit
- hping3

# Info
- Every container runs initially a script to make metasploit and its database work properly
- python3-venv at /root has the pip3 modules installed (`source python3-venv/bin/activate`)
