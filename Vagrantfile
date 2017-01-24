# -*- mode: ruby -*-
# vi: set ft=ruby :

################################################################################################################
#                                                                                                              #
# Vagrantfile for provisioning ready-to-go Rancher VMs#
#                                                                                                              #
# Author: Gilles Tosi                                                                                          #
#                                                                                                              #
# The up-to-date version and associated dependencies/project documentation is available at:                    #
#                                                                                                              #
# https://github.com/gilleslabs/learn-rancher                                                                  #
#                                                                                                              #
################################################################################################################


Vagrant.configure(2) do |config|

    config.vm.define "nfs" do |nfs|
        nfs.vm.box = "ubuntu/trusty64"
			config.vm.provider "virtualbox" do |v|
				v.cpus = 1
				v.memory = 1024
			end
        nfs.vm.hostname = "nfs"
		nfs.vm.network "private_network", ip: "192.168.99.104"
		nfs.vm.provision :shell, path: "install-nfs.sh"
	end

	config.vm.define "rancher" do |rancher|
        rancher.vm.box = "ubuntu/trusty64"
			config.vm.provider "virtualbox" do |v|
				v.cpus = 1
				v.memory = 1024
			end
        rancher.vm.hostname ="rancher"
		rancher.vm.network "private_network", ip: "192.168.99.100"
		rancher.vm.provision :shell, path: "install-docker.sh"
		rancher.vm.provision :shell, path: "install-rancher.sh"
    end
	
	
	config.vm.define "node1" do |node1|
        node1.vm.box = "ubuntu/trusty64"
			config.vm.provider "virtualbox" do |v|
				v.cpus = 1
				v.memory = 1024
			end
        node1.vm.hostname = "node1"
		node1.vm.network "private_network", ip: "192.168.99.101"
		node1.vm.provision :shell, path: "install-docker.sh"
		node1.vm.provision :shell, path: "install-node.sh"
	end
	
	config.vm.define "node2" do |node2|
        node2.vm.box = "ubuntu/trusty64"
			config.vm.provider "virtualbox" do |v|
				v.cpus = 1
				v.memory = 1024
			end
        node2.vm.hostname = "node2"
		node2.vm.network "private_network", ip: "192.168.99.102"
		node2.vm.provision :shell, path: "install-docker.sh"
		node2.vm.provision :shell, path: "install-node.sh"
	end
	
	config.vm.define "node3" do |node3|
        node3.vm.box = "ubuntu/trusty64"
			config.vm.provider "virtualbox" do |v|
				v.cpus = 1
				v.memory = 1024
			end
        node3.vm.hostname = "node3"
		node3.vm.network "private_network", ip: "192.168.99.103"
		node3.vm.provision :shell, path: "install-docker.sh"
		node3.vm.provision :shell, path: "install-node.sh"
	end
	
end