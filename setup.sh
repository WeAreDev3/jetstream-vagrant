# Setup
sudo add-apt-repository ppa:rethinkdb/ppa -y;
sudo apt-get update -q;
sudo apt-get install -y -q byobu redis-server rethinkdb htop;

sudo -u vagrant -H byobu-launcher-install

sudo -u vagrant -H rethinkdb --bind all &
sudo -u vagrant -H redis-server --port 6868 &