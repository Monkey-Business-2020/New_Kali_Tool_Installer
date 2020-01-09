#################################
#!/bin/bash
sudo apt update -y
sudo apt install python3-pip
sudo apt install python-pip
sudo apt install htop
sudo apt install flameshot	
cd /opt
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
bash /opt/EyeWitness/setup/setup.sh
cd /opt/AWSBucketDump
pip install -r requirements.txt
mv /opt/LinEnum/LinEnum.sh /opt/LinEnum/le.sh
mv /opt/* /opt/tools
mkdir -p /opt/tools
mkdir -p /opt/wordlists-fav
mkdir -p ~/Desktop/Kali_share
