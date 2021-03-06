#!/bin/bash

echo "apt update"
sudo apt -qq update
echo "✔ update done!"

# git
sudo apt -qq install git
ln -sf $(pwd)/git/.gitconfig ~/.gitconfig

# scripts
ln -sf $(pwd)/scripts ~/scripts

# ssh
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ln -sf $(pwd)/ssh/config ~/.ssh/config
chmod 700 ~/.ssh/config

# tmux
sudo apt -qq install tmux
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# wakeonlan
sudo apt -qq install wakeonlan
ln -sf $(pwd)/wakeonlan/.wakeonlan ~/.wakeonlan

# zsh
sudo apt -qq install zsh
ln -sf $(pwd)/.zshrc ~/.zshrc

# bash (calls zsh)
ln -sf $(pwd)/.bashrc ~/.bashrc

# vim
wget https://github.com/szukalski/.vim/raw/master/setup.sh -O ~/vim-setup.sh
chmod +x ~/vim-setup.sh

# pandoc for converting md to docs
sudo apt -qq install pandoc

# pandoc for converting md to pdf. Its a lot of large packages so install at your risk
# sudo apt -qq install pandoc texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra texlive

# Fin
echo "Setup your ssh private keys, restart your shell login, then run ~/vim-setup.sh"
