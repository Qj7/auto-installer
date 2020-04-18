## Ubuntu
sudo apt-get update -y && sudo apt-get install -y curl ansible bash && curl https://raw.githubusercontent.com/Qj7/auto-installer/master/install.sh | bash

## CentOS
sudo yum update -y && sudo yum install -y epel-release curl ansible bash && curl https://raw.githubusercontent.com/Qj7/auto-installer/master/install.sh | bash

## Adding new JSON API resource example
   ```
   rails g model category name:string
   rails generate jsonapi:resource category
   ails g controller Category --skip-assets
   ```
