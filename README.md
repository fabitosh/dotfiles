# dotfiles

Using [chezmoi](https://www.chezmoi.io/quick-start/) to share configuration files across multiple systems.

## Install
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply fabitosh`

## Maintain

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

- package manager: scoop installation (homebrew should work)
- ssh key generation and auth on github

### On Linux/Work

- Java installation
- secrets_env
- databricks.cfg
- vpn certificates

### Windows
- Install WSL (Corporate Network Issue Fix: `wsl.exe --update --web-download`)
- [AutoDarkMode](https://github.com/AutoDarkMode/Windows-Auto-Night-Mode) with scoop
- [PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/), system integration
- [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/), system integration
...
