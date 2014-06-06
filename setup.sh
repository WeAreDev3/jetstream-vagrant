# Setup
if [[ ! -f /home/vagrant/init ]]; then
    echo 'Running setup, please wait...';
    sudo add-apt-repository \
    ppa:rethinkdb/ppa -y &> /home/vagrant/setup.log &&
    echo 'Added RethinkDb repo';
    sudo add-apt-repository \
    ppa:chris-lea/node.js -y &> /home/vagrant/setup.log &&
    echo 'Added nodejs repo';
    sudo apt-get update &> /home/vagrant/setup.log &&
    sudo apt-get install -y byobu \
    python-software-properties python g++ \
    make nodejs redis-server rethinkdb htop \
    git &> /home/vagrant/setup.log &&
    echo 'Installed depends';

    sudo -u vagrant -H byobu-launcher-install
fi

sudo -u vagrant -H rethinkdb --bind all &> /home/vagrant/rethinkdb.log &
sudo -u vagrant -H redis-server /vagrant/redis.conf  &> /home/vagrant/redis.log &

if [[ ! -f /home/vagrant/init ]]; then
    cd /home/vagrant;
    sudo -u vagrant -H git clone \
    https://github.com/WeAreDev3/jetstream.git \
    &> /home/vagrant/setup.log &&
    echo 'Fetched repo';
    cd /home/vagrant/jetstream;
    sudo -u vagrant -H npm install &> /home/vagrant/setup.log &&
    echo 'Installed npm depends';
    sudo -u vagrant -H node /home/vagrant/jetstream/setup.js \
    &> /home/vagrant/setup.log;
    echo 'Setup DB tables';

    sudo -u vagrant -H touch init;
fi

echo 'JetStream testing backend has started! Make sure to read the readme!'
