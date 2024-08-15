
# from: https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal
# sudo snap install core; sudo snap refresh core
# sudo apt-get remove certbot
# sudo snap install --classic certbot
# sudo ln -s /snap/bin/certbot /usr/bin/certbot
# snap set certbot trust-plugin-with-root=ok


# NOTE: must generate a DO token in the dashboard under api and save it
# to the right location before these commands will run
# https://certbot-dns-digitalocean.readthedocs.io/en/stable/
# generate a DO token in the dashboard under API
# put it in a file at ~/.secrets/certbot/digitalocean.ini like:
# DigitalOcean API credentials used by Certbot (without the leading #'s obviously)
# dns_digitalocean_token = 0000111122223333444455....
# then run

# chmod go-rwx ~/.secrets/certbot/digitalocean.ini


# from: https://certbot-dns-digitalocean.readthedocs.io/en/stable/
# sudo snap install certbot-dns-digitalocean
certbot certonly \
  --dns-digitalocean \
  --dns-digitalocean-credentials ~/.secrets/certbot/digitalocean.ini \
  --dns-digitalocean-propagation-seconds 30 \
  -d antocracy.io -d www.antocracy.io

