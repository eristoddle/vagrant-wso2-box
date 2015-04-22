# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

  #
  # WSO2 box config
  #

  config.vm.define "wso2" do |wso2|

    config.vm.network "forwarded_port", guest: 9443, host: 9443
    config.vm.network "forwarded_port", guest: 9446, host: 9446
    config.vm.network "forwarded_port", guest: 8280, host: 8280
    config.vm.network "forwarded_port", guest: 8243, host: 8243
    config.vm.network "forwarded_port", guest: 7614, host: 7614

    config.vm.network :private_network, ip: "192.168.11.11"
    config.vm.hostname = "wso2.local"

    config.vm.provider "virtualbox" do |vb|
      vb.name = 'wso2-box'
      vb.customize ["modifyvm", :id, "--memory", "3072"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
      vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      vb.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
      vb.customize ["modifyvm", :id, "--acpi", "on"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
    end

    config.vm.provision :shell, :path => "provision/shell/install_init.sh"
    config.vm.provision :shell, :path => "provision/shell/download.sh"

    config.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "provision/puppet/manifests"
      puppet.manifest_file  = "site.pp"
      puppet.module_path = "provision/puppet/modules"
    end

  end

end
