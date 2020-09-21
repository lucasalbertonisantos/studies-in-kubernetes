Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
	v.cpus = 5
  end
  config.vm.network "public_network"
  config.vm.synced_folder "./configs", "/configs"
end