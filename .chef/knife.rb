# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mrchowdary"
client_key               "#{current_dir}/mrchowdary.pem"
validation_client_name   "mrcswetha-validator"
validation_key           "#{current_dir}/mrcswetha-validator.pem"
chef_server_url          "https://api.chef.io/organizations/mrcswetha"
cookbook_path            ["#{current_dir}/../cookbooks"]
