Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.gui = true
  end
  config.vm.box = "ubuntu-phantomcss"
  config.vm.provision :shell, :path => "install.sh"
  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'
end