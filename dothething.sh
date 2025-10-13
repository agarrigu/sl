#!/bin/sh

git clone https://github.com/mtoyoda/sl
cd sl
make
cp sl ~/.sl

for rc in ~/.zshrc ~/.bashrc ~/.config/fish/config.fish; do
	echo 'alias pwd="~/.sl"' >> $rc
	echo 'alias ls="~/.sl"' >> $rc
	echo 'alias cd="~/.sl"' >> $rc
done
