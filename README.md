jetstream-vagrant
=================

## How to use
- Make sure you have Vagrant installed (http://www.vagrantup.com/)
- Clone this repo
- When inside this repo, run `vagrant up`
- All done! Now all applications are set up and running!

## Extras
If you need to manage the machine for any reason, you can simply ssh in by running
`vagrant ssh`. To power down the machine, run `vagrant halt`. To start from the beginning,
run `vagrant destroy` and then rebuild the machine by running `vagrant up` again.

I recommend that you only `vagrant up` and `vagrant destroy` however, as they ensure the
machine is always the same for everyone.

For any other info, just read up on Vagrant and look at the source.