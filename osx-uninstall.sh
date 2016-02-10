#!/usr/bin/env bash

# Remove oh-my-zsh
uninstall_oh_my_zsh

# Remove homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

# Remove config
rm ~/.wlion_profile

# Change shell to bash
chsh -s /bin/bash
