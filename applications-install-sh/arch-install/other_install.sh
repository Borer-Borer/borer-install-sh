#/bin/bash
[[ ! $(command -v evince) ]] && $install_command evince || echo "evince exist!"

[[ ! $(command -v audacity) ]] && $install_command audacity || echo "audacity exist!"

if [ ! $(command -v unclutter) ]; then
    add_profile="nohup unclutter -idle 10 &"
    $install_command unclutter
    grep "$add_profile" $HOME/.profile
    if [ $?!=0 ]; then
        "$add_profile" >> $HOME/.profile
    fi
fi

# the game in linux
[[ ! $(command -v openarena) ]] && yay openarena || echo "opennarena exist!"

