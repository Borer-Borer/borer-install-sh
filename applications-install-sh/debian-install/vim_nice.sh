#/bin/bash

install_source_code_pro_font(){
    wget  https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip -O $PWD/temp/sourcecodepro.zip
    unzip $PWD/temp/sourcecodepro.zip -d $PWD/temp/sourcecodepro
    if [ -d $HOME/.fonts ]
    then
        mv -f $PWD/temp/sourcecodepro/ $HOME/.fonts/
    else
        mkdir $HOME/.fonts
        mv -f sourcecodepro/ $HOME/.fonts/
    fi
    fc-cache -fv
}

install_oh_my_zsh(){
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ln -s $PWD/applications-install-sh/configs/.zshrc $HOME/.zshrc
    cd $HOME/.oh-my-zsh/plugins
    git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_PATH/plugins/zsh-autosuggestions
    cd $PWD
}

install_keynav(){
    $kali_install keynav
    ln -s $PWD/applications-install-sh/configs/.keynavrc $HOME/.keynavrc
}

install_unclutter(){
    $kali_install unclutter
    sudo echo "ps -ef | grep clutter | grep -v grep >> /dev/null 2>&1 \
    if [ $? -ne 0 ]; then \
    unclutter -idle 10 \
    fi" >> /etc/profile
}

$install_command vim
$install_command tmux
$install_command fzf
$install_command universal-ctags
$install_command rofi
$install_command cmus
$install_command htop

install_source_code_pro_font
install_oh_my_zsh
install_keynav
install_unclutter

ln -s $PWD/applications-install-sh/configs/.vimrc $HOME/.vimrc
ln -s $PWD/applications-install-sh/configs/.tmux $HOME/.tmux
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
