# dotfiles

Using [chezmoi](https://www.chezmoi.io/quick-start/) to share configuration files across multiple systems.

### Add new dotfile

1. Edit the file
2. `chezmoi add .crazyconfig`
3. `chezmoi apply`

### Get changes on other machine

`chezmoi update`

### Edit config file

Don't edit the file directly! chezmoi will not track those changes.  

1. `chezmoi edit .crazyconfig`
2. `chezmoi apply`

### Badboi edited the file directly. Might cause conflicts

-`chezmoi apply .crazyconfig`
-`chezmoi re-add .crazyconfig`

## Not automated (to automate or just do manually)

- package manager: homebrew/scoop installation
- ssh key generation and auth on github
- oh-my-zsh and package installs

### On Linux/Work

- Java installation
- secrets_env
- databricks.cfg
- vpn certificates

### Windows

- [AutoDarkMode](https://github.com/AutoDarkMode/Windows-Auto-Night-Mode) with scoop
- PowerToys
...
