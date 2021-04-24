#/bin/bash

[[ ! $(command -v curl) ]] && $install_command curl || echo "curl exist!"
# [[ ! -d $PWD/temp ]] && mkdir $PWD/temp
# curl -fsSL https://get.docker.com -o $PWD/temp/get-docker.sh
# sudo chmod +x $PWD/temp/get-docker.sh
# sudo sh $PWD/temp/get-docker.sh
[[ ! $(command -v docker) ]] && $install_command docker || echo "docker exist!"
sudo usermod -aG docker $USER
[[ ! $(command -v docker-compose) ]] && $install_command docker-compose || echo "docker-compose exist!"
