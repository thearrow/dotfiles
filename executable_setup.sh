#!/usr/bin/env bash

# install software deps from Brewfile
brew bundle

# fzf post-install
bash -c $(brew --prefix)/opt/fzf/install

# install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# enable brew completions
zinit creinstall $(brew --prefix)/share/zsh/site-functions

# quiet new shell
touch ~/.hushlogin

# nextdns
brew install nextdns/tap/nextdns
