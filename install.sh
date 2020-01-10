#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt install myrepos
sudo apt install htop
sudo apt install flameshot
sudo apt install seclists
mkdir /opt/tools
mkdir /opt/wordlists-fav
cd /opt/tools
git clone https://github.com/UnaPibaGeek/ctfr.git -y
git clone https://github.com/zricethezav/gitleaks.git -y
git clone https://github.com/rebootuser/LinEnum.git -y
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git -y
git clone https://github.com/dxa4481/truffleHog.git -y
git clone https://github.com/trustedsec/unicorn.git -y
git clone https://github.com/Veil-Framework/Veil.git -y
git clone https://github.com/jordanpotti/AWSBucketDump.git -y
git clone https://github.com/FortyNorthSecurity/EyeWitness.git -y
git clone https://github.com/aboul3la/Sublist3r.git -y
git clone https://github.com/maurosoria/dirsearch.git -y
for i in $(ls -l /opt/tools | awk '{print$9}'); do mr register /opt/tools/$i; done
cd /opt/tools && mr update
bash /opt/tools/EyeWitness/setup/setup.sh
cd /opt/tools/AWSBucketDump
pip install -r requirements.txt
mv /opt/tools/LinEnum/LinEnum.sh /opt/tools/LinEnum/le.sh
cp /usr/share/seclists/Passwords/Common-Credentials/{10k-most-common.txt,500-worst-passwords.txt,best1050.txt,best110.txt,top-20-common-SSH-passwords.txt,top-passwords-shortlist.txt} /opt/wordlists-fav/
