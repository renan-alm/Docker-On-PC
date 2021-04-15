# ======== WLN Docker setup ========
# Author: Renan Almeida
# Version: 1.2.0
# Description: Install and set up Docker for PC

Vagrant.configure("2") do |config|

  # VM box being utilized
  config.vm.box = "ubuntu/bionic64"
  
  # DOCKER MACHINE PORTS FWD
  config.vm.network "forwarded_port", guest: 81, host: 81
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 9000, host: 9000
  config.vm.network "forwarded_port", guest: 19999, host: 19999
  config.vm.network "forwarded_port", guest: 9001, host: 9001

  # Host settings
  config.vm.hostname = "docker.host"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
	vb.name = "ubuntu_docker_host"
  end


  # Enable Dynamic Swap Space to prevent Out of Memory crashes
  config.vm.provision "shell", inline: "sudo apt-get update && sudo apt-get install swapspace python python3-pip python-dev libmysqlclient-dev python3-venv  build-essential libssl-dev libffi-dev unzip -y"

  # Allows ssh communication using created key pair
  config.vm.provision "shell", inline: "cat /vagrant/id_dockerhost.pub >> /home/vagrant/.ssh/authorized_keys"

  # Install Docker
  config.vm.provision "shell", inline: "chmod +x /vagrant/scripts/*"
  config.vm.provision "shell", inline: "sudo /vagrant/scripts/docker.sh"
  config.vm.provision "shell", inline: "chmod 666 /var/run/docker.sock"
  config.vm.provision "shell", inline: "docker run -d -p 3306:80 dockersamples/static-site"

end
