# Setup
if [[ ! -f /home/vagrant/init ]]; then
    echo 'Running setup, please wait...'
    sudo add-apt-repository ppa:rethinkdb/ppa -y &> /home/vagrant/setup.log;
    echo 'Added RethinkDb repo'
    sudo apt-get update &> /home/vagrant/setup.log;
    sudo apt-get install -y byobu redis-server rethinkdb htop &> /home/vagrant/setup.log;
    echo 'Installed depends'

    sudo -u vagrant -H byobu-launcher-install
    sudo -u vagrant -H touch init
fi

sudo -u vagrant -H rethinkdb --bind all &> ~/rethinkdb.log &
sudo -u vagrant -H redis-server /vagrant/redis.conf  &> ~/redis.log &
echo 'JetStream testing backend has started! Make sure to read the readme!'