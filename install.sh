#/bin/bash

ln -sf $PWD/.package/.tmux.conf ~/.tmux.conf

if [ -d "$HOME/.config/micro" ]; then
	ln -sf $PWD/.package/micro/syntax ~/.config/micro/syntax
	ln -sf $PWD/.package/micro/bindings.json ~/.config/micro/bindings.json
else
	mkdir ~/.config/micro
	ln -sf $PWD/.package/micro/syntax ~/.config/micro/syntax
	ln -sf $PWD/.package/micro/bindings.json ~/.config/micro/bindings.json
fi
