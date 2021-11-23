#/bin/bash
[[ ! $(command -v evince) ]] && $install_command evince || echo "evince exist!"

[[ ! $(command -v audacity) ]] && $install_command audacity || echo "audacity exist!"

[[ ! $(command -v xclip) ]] && $install_command xclip || echo "xclip exist!"

### 文件管理
[[ ! $(command -v nautilus) ]] && $install_command nautilus ||
    echo "nautilus exist!"

[[ ! $(command -v fcitx5) ]] && $install_command fcitx5 fcitx5-qt
fcitx5-configtool fcitx5-chinese-addons || echo "fcitx5 exist!"


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

# pdf edit note app
[[ ! $(command -v xournal) ]] && yay xournal || echo "xournal exist!"

docker run --rm -it wernight/funbox cmatrix
# debtap 用于安装deb包
# sudo debtap -u
# debtap xxx.deb
# sudo pacman -U xxx.pkg
# OR
# sudo pacman -U xxxx.xz
# excalidraw 画图工具
#git clone https://github.com/excalidraw/excalidraw.git
#yarn--install,yarn start--run

yay install snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install wps-office-multilang
