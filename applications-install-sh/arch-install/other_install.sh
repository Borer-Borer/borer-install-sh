#/bin/bash
[[ ! $(command -v evince) ]] && $install_command evince || echo "evince exist!"

[[ ! $(command -v audacity) ]] && $install_command audacity || echo "audacity exist!"
