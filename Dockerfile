FROM kalilinux/kali-last-release

WORKDIR /root

RUN apt update
RUN apt install net-tools iproute2 git netexec nmap ssh python3-pip python3-venv python2.7 ruby metasploit-framework dirb sslscan dnsutils sendemail postfix golang subfinder nano -y
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
RUN python2.7 get-pip.py
RUN rm -rf get-pip.py
RUN python2.7 -m pip install --upgrade pip
RUN python3 -m venv python3-venv
RUN /bin/bash/source python3-venv/bin/activate;python3 -m pip install --upgrade pip requests shcheck ultimate_sitemap_parser;/bin/bash/deactivate
RUN service postgresql enable
RUN service postgresql start
RUN service postfix enable
RUN service postfix start
RUN msfdb init
RUN updatedb
RUN wget https://raw.githubusercontent.com/rafaelbaldasso/Khitai/refs/heads/main/khitai.py
RUN git clone https://github.com/projectdiscovery/httpx.git
RUN cd /root/httpx/cmd/httpx;go build;mv httpx /usr/local/bin/;cd /root
