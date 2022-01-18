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

# 便条 xpad
[[ ! $(command -v xpad) ]] && $install_command xpad || echo "xpad exist!"

# 阅读器calibre
[[ ! $(command -v calibre) ]] && $install_command calibre || echo "calibre exist!"

# 连接手机文件MTP
[[ ! $(command -v mtpfs) ]] && $install_command mtpfs || echo "mtpfs exist!"
[[ ! $(command -v gvfs-mtp) ]] && $install_command gvfs-mtp || echo "gvfs-mtp exist!"

# FTP
[[ ! $(command -v inetutils ) ]] && $install_command inetutils  || echo " inetutils exist!"

#微信
wechat-uos
#远程控制应用
rustdesk-bin
#截图命令
grim
#另一种网络链接方式
安装networkmanager
systemctl start networkmanager
systemctl enable networkmanager
nmcli device wifi connect my_wifi password *****
nmcli con up my_wifi
#录屏工具
kazam obs-studio
# 内网穿透
ngrok


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
sudo ln -s /snap/bin/wps-office-multilang.wps  /bin/wps-office-multilang.wps
sudo ln -s /snap/bin/wps-office-multilang.wpp  /bin/wps-office-multilang.wpp
sudo ln -s /snap/bin/wps-office-multilang.et  /bin/wps-office-multilang.et
