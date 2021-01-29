#!/bin/bash

##some var
PWD=$(pwd)

##check should use which install-command to install
sudo chmod +x ./check-linux-release.sh
. $PWD/check-linux-release.sh
. $PWD/system-config.sh
##export the install-command to sub shell
export install_command
export install_main_command
export PWD
export release_like_name

if [ -d "$PWD/applications-install-sh/${release_like_name}'install'"]; then
    echo "This shell don't support your linux release"
    exit 1
fi
##cycle these install bash shell to install application
## you can install and config in them
for applications_install_sh in ${PWD}/applications-install-sh/*
do
    if [ $applications_install_sh = "${PWD}/applications-install-sh/${release_like_name}-install" ]; then
        for application_sh in "$applications_install_sh"
        do
        sudo chmod +x "$application_sh"
        . "$application_sh"
        done
    fi
done

rm -rf $PWD/temp
