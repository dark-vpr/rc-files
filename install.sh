#/bin/bash

ln -sf $PWD/.package/.$HOME/.SpaceVim.dtmux.conf ~/.tmux.conf
if [ -d $HOME/.tmux/plugins/tpm ]; then
  printf "TPM has already been Installed.....\n"
else
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo "TPM Installation Completed....\n"
fi
if [ -d "$HOME/.config/micro" ]; then
  rm -rf $HOME/.config/micro/syntax
  ln -sf $PWD/.package/micro/syntax $HOME/.config/micro/syntax
  ln -sf $PWD/.package/micro/bindings.json $HOME/.config/micro/bindings.json
else
  mkdir ~/.config/micro
  ln -sf $PWD/.package/micro/syntax $HOME/.config/micro/
  ln -sf $PWD/.package/micro/bindings.json $HOME/.config/micro/bindings.json
fi
if [ -d "$HOME/.SpaceVim.d" ]; then
  ln -sf $PWD/.package/SpaceVim.d/* $HOME/.SpaceVim.d
fi
