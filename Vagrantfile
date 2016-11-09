# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure('2') do |config|
  config.berkshelf.enabled = true
  config.omnibus.chef_version = '12.5.1'
  config.vm.box = 'bento/ubuntu-14.04'

  config.vm.provider 'virtualbox' do |v, override|
    v.memory = 4096
    v.cpus = 1
  end

  config.vm.network 'private_network', ip: '192.168.14.89'
  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'acme'
  end
end
