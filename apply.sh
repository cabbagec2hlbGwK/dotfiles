#!/bin/bash

echo "installing the depen..."

cat applicationlist | while read -r line
do
       sudo  apt install  $line -y ;
	echo "installed $line " ;

done

echo " installing plug for nvim "
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp ./config/* ~/.config/ -r
echo "alias vim='nvim'" >> ~/.bashrc
echo "alias vi='nvim'" >> ~/.bashrc

cp ./wallpaper ~/Pictures/
echo " done installing"
echo " make sure to run PlugInstall in vim "
