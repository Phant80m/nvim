#!/bin/bash

if [ -d ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]; then
  read -p "$(tput setaf 1)The Packer directory already exists. Do you want to override it? (y/n)$(tput sgr0) " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
  fi
  rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

if [ -d ~/.config/nvim/ ]; then
  read -p "$(tput setaf 1)The Neovim configuration directory already exists. Do you want to override it? (y/n)$(tput sgr0) " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
  fi
  rm -rf ~/.config/nvim/
fi

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/Phant80m/nvim ~/.config/nvim/
