#/bin/bash

##########
## After installed goldendict,downloaded some dicts and unzipped them
## then copy them to $HOME/softwares/dicts
## finally,you should open the goldendict to config these dicts
##########
[[ ! $(command -v goldendict) ]] && $install_command goldendict || echo "goldendict exist!"
# wget -v -O $PWD/temp/stardict-21cen-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-21cen-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-21cen-2.4.2.tar.bz2 -C $PWD/temp
# curl -fLo  stardict-gaojihanyudacidian_fix-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-gaojihanyudacidian_fix-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-gaojihanyudacidian_fix-2.4.2.tar.bz2 -C $PWD/temp
# wget -v -O $PWD/temp/stardict-hanyuchengyucidian_fix-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-hanyuchengyucidian_fix-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-hanyuchengyucidian_fix-2.4.2.tar.bz2 -C $PWD/temp/
# wget -v -O $PWD/temp/stardict-kdic-computer-gb-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-kdic-computer-gb-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-kdic-computer-gb-2.4.2.tar.bz2 -C $PWD/temp/
# wget -v -O $PWD/temp/stardict-oald-cn-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-oald-cn-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-oald-cn-2.4.2.tar.bz2 -C $PWD/temp/
# wget -v -O $PWD/temp/stardict-xdict-ce-gb_fix-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-xdict-ce-gb_fix-2.4.2.tar.bz2
# tar -xvf stardict-xdict-ce-gb_fix-2.4.2.tar.bz2 -C $PWD/temp/
# wget -v -O $PWD/temp/stardict-xdict-ec-gb_fix-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-xdict-ec-gb_fix-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-xdict-ec-gb_fix-2.4.2.tar.bz2 -C $PWD/temp/
# wget -v -O $PWD/temp/stardict-xhzd-2.4.2.tar.bz2 https://raw.githubusercontent.com/JanU-YieG/NewNotes/master/others/dictionaries/stardict-xhzd-2.4.2.tar.bz2
# tar -xvf $PWD/temp/stardict-xhzd-2.4.2.tar.bz2 -C $PWD/temp/
# if [ -d $HOME/softwares/dicts ]; then
    # sudo mv $PWD/temp/stardict-* $HOME/softwares/dicts/
# else
    # sudo mkdir $HOME/softwares/dicts
    # sudo chmod 744 $PWD/temp/
    # sudo mv $PWD/temp/stardict-* $HOME/softwares/dicts/
# fi
# http://dict.youdao.com/w/eng/%GDWORD%/#keyfrom=dict2.index
# https://cn.bing.com/dict/search?q=%GDWORD%
