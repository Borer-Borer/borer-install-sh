#/bin/bash

#turn off the bell
case $release_like_name in
    'debian')
        if [ -f /etc/modprobe.d/blacklist-libnfc.conf ]; then
            cat /etc/modprobe.d/blacklist-libnfc.conf | grep "^blacklist pcspkr$"
            if [ $? -ne 0 ]; then
                sudo echo "blacklist pcspkr" >> /etc/modprobe.d/blacklist-libnfc.conf
            fi
        fi
        ;;
    *)
        ;;
esac
