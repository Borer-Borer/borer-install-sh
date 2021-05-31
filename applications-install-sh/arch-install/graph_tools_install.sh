#/bin/bash
#video
[[ ! $(command -v mpv) ]] && $install_command mpv || echo "ncdu exist!"
[[ ! $(command -v vlc) ]] && $install_command vlc || echo "ncdu exist!"
#password manager
[[ ! $(command -v keeppassxc) ]] && $install_command keeppassxc || echo "keeppassxc exist!"
#Multi-platform app that allows your devices to commmunicate
#mobile to pc connector:kdeconnect
[[ ! $(command -v kdeconnect) ]] && $install_command kdeconnect || echo "kdeconnect exist!"
#mobile to pc sync:syncthing
[[ ! $(command -v syncthing) ]] && $install_command syncthing || echo "syncthing exist!"
#trash
[[ ! $(command -v trash) ]] && $install_command trash || echo "trash exist!"
#file manager
[[ ! $(command -v nautilus) ]] && $install_command nautilus || echo "nautilus exist!"
