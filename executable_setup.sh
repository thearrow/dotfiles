#!/usr/bin/env bash

# install software deps from Brewfile
brew bundle

# fzf post-install
bash -c $(brew --prefix)/opt/fzf/install

# enable brew completions
zinit creinstall $(brew --prefix)/share/zsh/site-functions

# quiet new shell
touch ~/.hushlogin

