#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
    # install homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if ! command -v chezmoi &> /dev/null
then
    # install chezmoi
    brew install chezmoi
fi

# install dotfiles
chezmoi init --apply --verbose https://github.com/thearrow/dotfiles.git

# install software deps from Brewfile
brew bundle

# fzf post-install
bash -c $(brew --prefix)/opt/fzf/install

# enable brew completions
zinit creinstall $(brew --prefix)/share/zsh/site-functions

# quiet new shell
touch ~/.hushlogin

