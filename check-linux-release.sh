#/bin/bash

release_id_like=$(cat /etc/*-release | grep "^ID_LIKE=")
release_like_name=${release_id_like#ID_LIKE=}
if [ "$release_like_name" = "debian" ]; then
    release_main_command='sudo apt'
    install_command='sudo apt install'
    # $release_main_command update
fi

#######################################
####  other linux release can add  ####
#######################################
if [ "$release_like_name" = "arch" ]; then
    install_command='sudo yay'
fi

export install_command
export release_main_command
export release_like_name
