# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty64'

  # ex: accessing "localhost:8080" will access port 80 on the vagrant machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision :shell, path: 'bootstrap.sh'

  config.vm.provider 'virtualbox' do |vb|
    # use 2G of memory
    vb.customize ['modifyvm', :id, '--memory', "2048"]
  end
end
