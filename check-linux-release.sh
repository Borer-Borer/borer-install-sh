#/bin/bash

release_id_like=$(cat /etc/*-release | grep "^ID_LIKE=")
release_like_name=${release_id_like#ID_LIKE=}
if [ -z "$release_like_name" ]; then
    release_id_like=$(cat /etc/*-release | grep "^ID=")
    release_like_name=${release_id_like#ID=}
fi

if [ "$release_like_name" = "debian" ]; then
    release_main_command='sudo apt'
    install_command='sudo apt install'
    # $release_main_command update
fi

#######################################
####  other linux release can add  ####
#######################################
if [ "$release_like_name" = "arch" ]; then
    release_main_command='sudo pacman'
    install_command='sudo pacman -S'
    release_like_name='arch'
fi

if [[ "$release_like_name" =~ .*opensuse*. ]]; then
    release_main_command='sudo zypper'
    install_command='sudo zypper install'
    release_like_name='opensuse'
    # $release_main_command update
fi

export install_command
export release_main_command
export release_like_name
