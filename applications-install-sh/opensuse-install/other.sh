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
[[ ! $(command -v ripgrep) ]] && $install_command ripgrep || echo "ripgrep exist!"
# [[ ! $(command -v gdebi) ]] && $install_command gdebi || echo "gdebi exist!"
