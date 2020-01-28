Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"


  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 8081


  config.vm.synced_folder "./www", "/var/www/html/"


  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "provision.sh"


end
