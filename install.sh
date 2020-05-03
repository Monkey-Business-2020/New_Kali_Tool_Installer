#!/bin/bash
sudo chmod +x updateallthethings && sudo mv updateallthethings /usr/local/bin/
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install myrepos
sudo apt install htop
sudo apt install flameshot
sudo apt install seclists
sudo apt install python3-pip
sudo mkdir /opt/tools
sudo mkdir /opt/wordlists-fav
cd /opt/tools
git clone https://github.com/UnaPibaGeek/ctfr.git
git clone https://github.com/zricethezav/gitleaks.git
git clone https://github.com/rebootuser/LinEnum.git
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git
git clone https://github.com/dxa4481/truffleHog.git
git clone https://github.com/trustedsec/unicorn.git
git clone https://github.com/Veil-Framework/Veil.git
git clone https://github.com/jordanpotti/AWSBucketDump.git
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
git clone https://github.com/aboul3la/Sublist3r.git
git clone https://github.com/maurosoria/dirsearch.git
git clone https://github.com/michenriksen/aquatone.git
git clone https://github.com/Tuhinshubhra/CMSeeK.git
git clone https://github.com/s0md3v/Corsy.git
git clone https://github.com/ffuf/ffuf.git
git clone https://github.com/magnumripper/JohnTheRipper.git
git clone https://github.com/samratashok/nishang.git
git clone https://github.com/nettitude/Prowl.git
git clone https://github.com/DominicBreuker/pspy.git
git clone https://github.com/hatlord/rsdns.git
git clone https://github.com/drwetter/testssl.sh.git
git clone https://github.com/EnableSecurity/wafw00f
git clone https://github.com/HA71/Namechk.git
git clone https://github.com/WebBreacher/WhatsMyName.git
git clone https://github.com/DedSecInside/TorBot.git

for i in $(ls -l /opt/tools | awk '{print$9}'); do mr register /opt/tools/$i; done
for i in $(find /opt/tools/ -name require*.txt); do sudo pip3 install -r $i; done
for i in $(find /opt/tools/ -name "*.sh"); do sudo chmod +x $i; done
bash /opt/tools/Veil/config/setup.sh --force --silent
bash /opt/tools/EyeWitness/Python/setup/setup.sh
cd /opt/tools && mr update
sudo mv /opt/tools/LinEnum/LinEnum.sh /opt/tools/LinEnum/le.sh
sudo cp /usr/share/seclists/Passwords/Common-Credentials/{10k-most-common.txt,500-worst-passwords.txt,best1050.txt,best110.txt,top-20-common-SSH-passwords.txt,top-passwords-shortlist.txt} /opt/wordlists-fav/
