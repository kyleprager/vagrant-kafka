# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
ZOOKEEPER_HOSTS = 1

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.ssh.forward_agent = true
  config.vm.provision "shell", path: "scripts/init.sh"
  
  config.vm.network "public_network", use_dhcp_assigned_default_route: true, :bridge => 'Wi-Fi'
  config.vm.network "private_network", ip: "10.30.3.2", netmask: "255.255.255.0", virtualbox__intnet: "servidors", drop_nat_interface_default_route: true

  # config.vm.network "forwarded_port", guest: 2181, host: 2181
  # config.vm.network "forwarded_port", guest: 9092, host: 9092
  
  config.vm.provider :virtualbox do |v|
    v.gui = false
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"
    v.customize ["modifyvm", :id, "--memory", "1024"]
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end

  config.vm.provider :parallels do |v|
    #v.gui = false
    config.vm.box_url = "http://download.parallels.com/desktop/vagrant/precise64.box"
    #v.customize ["modifyvm", :id, "--memory", "1024"]
    v.memory = 1024
    v.cpus = 1
  end

end
