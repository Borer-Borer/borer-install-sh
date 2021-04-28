#!/usr/bin/env bash

install_fira(){
    fonts_dir="${HOME}/.local/share/fonts"
    if [ ! -d "${fonts_dir}" ]; then
        echo "mkdir -p $fonts_dir"
        mkdir -p "${fonts_dir}"
    else
        echo "Found fonts dir $fonts_dir"
    fi
    
    for type in Bold Light Medium Regular Retina; do
        file_path="${HOME}/.local/share/fonts/FiraCode-${type}.ttf"
        file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
        if [ ! -e "${file_path}" ]; then
            echo "wget -O $file_path $file_url"
            wget -O "${file_path}" "${file_url}"
        else
        echo "Found existing file $file_path"
        fi;
    done

    echo "fc-cache -f"
    fc-cache -f
}

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

# install_fira
# install_source_code_pro_font
