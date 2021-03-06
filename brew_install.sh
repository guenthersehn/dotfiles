#!/bin/bash

## install a bunch of brew packages
cd `dirname $0`
brew upgrade
brew install cask
brew install `cat brew_packages.txt`
brew cask install `cat brew_cask_packages.txt`

## create a ~/.fzf.zsh file
$(brew --prefix)/opt/fzf/install --no-update-rc --no-bash --all

## install some nice fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code-nerd-font
brew cask install font-meslo-lg-nerd-font

