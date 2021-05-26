#/bin/bash
[[ ! $(command -v evince) ]] && $install_command evince || echo "evince exist!"
