# Setup
sudo add-apt-repository ppa:rethinkdb/ppa -y > /dev/null;
sudo apt-get update > /dev/null;
sudo apt-get install -y byobu redis-server rethinkdb htop > /dev/null;

sudo -u vagrant -H byobu-launcher-install

sudo -u vagrant -H rethinkdb --bind all &
sudo -u vagrant -H redis-server --port 6868 &