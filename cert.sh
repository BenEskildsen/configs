
# from: https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal
# sudo snap install core; sudo snap refresh core
# sudo apt-get remove certbot
# sudo snap install --classic certbot
# sudo ln -s /snap/bin/certbot /usr/bin/certbot

# NOTE: must generate a DO token in the dashboard under api and save it
# to the right location before these commands will run

# from: https://certbot-dns-digitalocean.readthedocs.io/en/stable/
# sudo snap install certbot-dns-digitalocean
certbot certonly \
  --dns-digitalocean \
  --dns-digitalocean-credentials ~/.secrets/certbot/digitalocean.ini \
  --dns-digitalocean-propagation-seconds 30 \
  -d antocracy.io -d www.antocracy.io

