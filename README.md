jetstream-vagrant
=================

## How to use
- Make sure you have all depends installed
- Clone this repo
- When inside this repo, run `vagrant up`
- All done! Now all applications are set up and running!

If you need to manage the machine for any reason, you can simply ssh in by running
`vagrant ssh`. To power down the machine, run `vagrant halt`. To start from the beginning,
run `vagrant destroy` and then rebuild the machine by running `vagrant up` again.

#### Depends
- Virtualbox
- Vagrant (http://www.vagrantup.com/)

## What you have access too
- Rethinkdb web admin (via port 8080)
- Rethinkdb client (via port 28015)
- Redis client (via 6868)

#### Other
For any other info, just read up on Vagrant and look at the source.
