# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT

# install Apt-Cacher-ng
# uses port 3142/tcp
sudo apt-get install -y apt-cacher-ng

# install avahi for service discovery
sudo apt-get install -y avahi-daemon avahi-utils
sudo cp /vagrant/scripts/cache-server/apt-cacher-ng.service /etc/avahi/services/apt-cacher-ng.service 

# check, if service "_apt_proxy._tcp" is published
avahi-browse -kprt _apt_proxy._tcp

# show ifconfig
ifconfig

SCRIPT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.hostname = "aptcache.datacenter.local"
  config.vm.network "public_network", bridge: 'en1: Wi-Fi (AirPort)'

  #config.vm.network "forwarded_port", guest: 3142, host: 3142
  config.vm.provision "shell", inline: $script
end
