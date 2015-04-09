Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.gui = true
  end
  config.vm.box = "ubuntu-phantomcss"
  config.vm.provision :shell, :path => "install.sh"
  config.vm.synced_folder "~/Documents/Language/", "/language/"
  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'
end