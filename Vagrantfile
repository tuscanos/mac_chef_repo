Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/shonallearn"
    chef.validation_key_path = ".chef/shonallearn-validator.pem"
    chef.validation_client_name = "shonallearn-validator"
    chef.node_name = "server"
  end
end
