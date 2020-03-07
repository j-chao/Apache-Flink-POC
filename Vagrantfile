# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "generic/ubuntu1804"

  config.vm.define "flink" do |docker|
    docker.vm.box_version = "= 2.0.6"
    docker.vm.hostname = "flink"
    docker.vm.provision "docker" 
    docker.vm.provision :shell, 
      privileged: false, 
      path: "provisioning/flink.sh"
    docker.vm.network :private_network, ip: "172.28.33.10"
    docker.vm.provider :virtualbox do |vb|
      vb.cpus = 2
      vb.memory = 1024
    end
  end

end
