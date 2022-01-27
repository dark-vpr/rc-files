#/bin/bash

ln -sf $PWD/.package/.tmux.conf ~/.tmux.conf

if [ -d "$HOME/.config/micro" ]; then
	rm -rf $HOME/.config/micro/syntax
	ln -sf $PWD/.package/micro/syntax $HOME/.config/micro/syntax
	ln -sf $PWD/.package/micro/bindings.json $HOME/.config/micro/bindings.json
else
	mkdir ~/.config/micro
	ln -sf $PWD/.package/micro/syntax $HOME/.config/micro/
	ln -sf $PWD/.package/micro/bindings.json $HOME/.config/micro/bindings.json
fi
