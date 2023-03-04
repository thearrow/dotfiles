#!/usr/bin/env bash

# install software deps from Brewfile
brew bundle

# fzf post-install
bash -c $(brew --prefix)/opt/fzf/install

# quiet new shell
touch ~/.hushlogin
