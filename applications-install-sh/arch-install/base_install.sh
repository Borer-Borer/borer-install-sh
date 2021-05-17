#/bin/bash
#GNOME Keyring is a collection of components in GNOME that store secrets, passwords, keys, certificates and make them available to applications.
[[ ! $(command -v gnome-keyring) ]] && $install_command
gnome-keyring || echo "gnome-keyring exist!"
