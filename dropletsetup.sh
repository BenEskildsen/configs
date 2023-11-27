
sudo apt update

# docker
# fresh install:
# sudo apt-get remove docker docker-engine docker.io
# sudo apt install docker.io
# sudo snap install docker
# docker compose:
sudo apt-get install docker-compose-plugin

sudo apt-get install nginx
# installs netstat
apt install net-tools

# npm stuff
sudo apt install npm
hash -r # clears cache so that the path is right?
npm install -g npm@latest

# node stuff
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# npm install -g browserify

# we're starting with this already
# git clone https://github.com/BenEskildsen/configs.git
# cd configs
# cp bash_profile ~/.bash_profile
# cp bashrc ~/.bashrc
cp vimrc ~/.vimrc
# source ~/.bash_profile
# source ~/.bashrc

# git stuff
git config --global user.email ben.eskilstark@gmail.com
git config --global user.name BenEskilstark
ssh-keygen -t rsa -b 4096 -C "ben.eskilstark@gmail.com"
# note that you then have to add the id_rsa.pub to github
# See Notes/Github for how to do this

# ports
ufw allow http
ufw allow https

