Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "forwarded_port", guest: 30000, host: 30000
  config.vm.network "forwarded_port", guest: 30001, host: 30001
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
	v.cpus = 5
  end
  config.vm.network "public_network"
  config.vm.synced_folder "./configs", "/configs"
end