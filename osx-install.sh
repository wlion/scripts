#!/usr/bin/env bash

# Search for file and create if it doesn't exist
function findOrMake {
	if [ ! -f $1 ]; then
		touch $1
	fi
}

# Search for text and append if it doesn't exist
function searchOrAppend {
	if ! grep -q "$1" $2; then
		echo "$1" >> $2
	fi
}

# Install command line tools for Xcode
if test ! $(which xcode-select); then
	xcode-select --install
fi

# Check for Homebrew and install
if test ! $(which brew); then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Binaries to install with Homebrew
binaries=(
	coreutils
	findutils
	bash
	zsh
	git
	vim
	node
	homebrew/dupes/grep
)
brew install ${binaries[@]}

# Cleanup brew
brew cleanup

# Copy profile
curl https://raw.githubusercontent.com/wlion/scripts/master/stubs/.wlion_profile > ~/.wlion_profile

# Create or update .bash_profile if it doesn't already exist
findOrMake ~/.bash_profile
searchOrAppend "source ~/.wlion_profile 2> /dev/null" ~/.bash_profile

# Create or update .zshrc if it doesn't already exist
findOrMake ~/.zshrc
searchOrAppend "source ~/.wlion_profile 2> /dev/null" ~/.zshrc

# Edit /etc/shells
searchOrAppend "/usr/local/bin/zsh" /etc/shells
searchOrAppend "/usr/local/bin/bash" /etc/shells

# Change shell to zsh
chsh -s /usr/local/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
