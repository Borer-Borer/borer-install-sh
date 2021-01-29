#/bin/bash

$install_command curl
curl -fsSL https://get.docker.com -o $PWD/temp/get-docker.sh
sudo chmod +x $PWD/temp/get-docker.sh
sudo sh $PWD/temp/get-docker.sh
sudo usermod -aG docker $USER
$install_command docker-composer
