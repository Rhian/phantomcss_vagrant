# phantomcss_vagrant
Vagrant config to install PhantomJS 1.9.7 and CasperJS prerequisites for PhantomCSS image diffing.

## instructions
Download Vagrant
Clone this repository
In the terminal, run vagrant add box ubuntu-phantomcss https://cloud-images.ubuntu.com/vagrant/raring/current/raring-server-cloudimg-i386-vagrant-disk1.box (you only need to do this the first time)
Once the box has downloaded, you can start your session in the guest machine by running vagrant up
Connect to the guest machine with ssh vagrant
Run cd /vagrant to get access to your shared directories - anything at the same level as the Vagrantfile is shared by default
