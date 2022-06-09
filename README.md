# Setup

1. Install homebrew
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

2. Install chezmoi
```shell
brew install chezmoi
```

3. Sync dotfiles
```shell
chezmoi init --apply --verbose git@github.com:thearrow/dotfiles.git
```

4. Run setup script
```shell
./setup.sh
```

5. Configure NextDNS
```shell
sudo nextdns install -config $CONFIG_ID -report-client-info -auto-activate
```

Manually:
- point iterm2 preferences to ~/
- grab ssh keys from bitwarden
  - `chmod 400 ~/.ssh/id_rsa`
  - `ssh-add --apple-use-keychain ~/.ssh/id_rsa`
- import istatmenus settings and add license key
- install jetbrains IDEs and sync settings
