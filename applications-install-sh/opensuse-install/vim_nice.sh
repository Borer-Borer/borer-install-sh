#/bin/bash

[[ ! $(command -v vim) ]] && $install_command vim || echo "vim exist!"
[[ ! $(command -v fzf) ]] && $install_command fzf || echo "fzf exist!"
[[ ! $(command -v ctags) ]] && $install_command ctags || echo "ctags exist!"
[[ ! $(command -v tmux) ]] && $install_command tmux || echo "tmux exist!"
[[ ! $(command -v rofi) ]] && $install_command rofi || echo "rofi exist!"
[[ ! $(command -v cmus) ]] && $install_command cmus || echo "cmus exist!"
[[ ! $(command -v ripgrep) ]] && $install_command ripgrep || echo "ripgrep exist!"

install_oh_my_zsh(){
    [[ ! $(command -v zsh) ]] && $install_command zsh || echo "zsh exist!"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    chsh -s $(which zsh) $USER
    ZSH_PATH=$HOME/.oh-my-zsh
    rm $HOME/.zshrc
    cp $PWD/applications-install-sh/configs/.zshrc $HOME/.zshrc
    [[ ! -d $ZSH_PATH/plugins/zsh-autosuggestions ]] && git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_PATH/plugins/zsh-autosuggestions || echo "autosuggestions exist"
    [[ ! -d $ZSH_PATH/themes/spaceship-prompt ]] && git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_PATH/themes/spaceship-prompt" --depth=1 || echo "spaceship-promp exist"
    rm $ZSH_PATH/themes/spaceship.zsh-theme
    ln -s "$ZSH_PATH/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_PATH/themes/spaceship.zsh-theme" 
}

# install_keynav(){
    # $kali_install keynav
    # ln -s $PWD/applications-install-sh/configs/.keynavrc $HOME/.keynavrc
# }

install_oh_my_zsh
# install_keynav
rm $HOME/.vimrc
rm $HOME/.tmux.conf
cp $PWD/applications-install-sh/configs/.vimrc $HOME/.vimrc
cp $PWD/applications-install-sh/configs/.tmux.conf $HOME/.tmux.conf
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
