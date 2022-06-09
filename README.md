# Setup

```shell
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install chezmoi
brew install chezmoi

# install dotfiles
chezmoi init --apply --verbose https://github.com/thearrow/dotfiles.git

# run setup script
./setup.sh

# grab ssh keys from bitwarden
```