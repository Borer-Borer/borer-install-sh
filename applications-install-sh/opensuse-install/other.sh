#/bin/bash

# [[ ! $(command -v zoom) ]] && $install_command zoom || echo "zoom exist!"
[[ ! $(command -v audacity) ]] && $install_command audacity || echo "audacity exist!"
# [[ ! $(command -v ag) ]] && $install_command ag || echo "ag exist!"
[[ ! $(command -v evince) ]] && $install_command evince || echo "evince exist!"
# [[ ! $(command -v wps) ]] && $install_command wps || echo "wps exist!"
[[ ! $(command -v cherrytree) ]] && $install_command cherrytree || echo "cherrytree exist!"
[[ ! $(command -v flameshot) ]] && $install_command flameshot || echo "flameshot exist!"
# [[ ! $(command -v typora) ]] && $install_command typora || echo "typora exist!"
[[ ! $(command -v smplayer) ]] && $install_command smplayer || echo "smplayer exist!"
[[ ! $(command -v mysql-workbench) ]] && $install_command mysql-workbench || echo "mysql-workbench exist!"
# [[ ! $(command -v gdebi) ]] && $install_command gdebi || echo "gdebi exist!"
[[ ! $(command -v htop) ]] && $install_command htop || echo "htop exist!"

install_unclutter(){
    [[ ! $(command -v unclutter) ]] && $install_command unclutter || echo "unclutter exist."
    # sudo chmod 777 /etc/profile
    # sudo echo "ps -ef | grep clutter | grep -v grep >> /dev/null 2>&1 \n
    # if [ $? -ne 0 ]; then \n
    # unclutter -idle 10 \n
    # fi" >> /etc/profile
}
