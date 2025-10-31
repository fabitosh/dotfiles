# dotfiles

Using [chezmoi](https://www.chezmoi.io/quick-start/) to share configuration files across multiple systems.

[Introduction to my dotfile setup](https://fabio.earth/projects/configuration-synchronization/).

## Install

- Mac & Linux: `sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply fabitosh`
- Windows: [Install chezmoi](https://www.chezmoi.io/install/#__tabbed_4_2). Run `chezmoi init --apply fabitosh`.

### Manual steps left

- ssh key generation and auth on github

### Mac OS

Unsure. Keyboard layout without deadletters. Karabiner?

### Windows

- Install WSL (Corporate Network Issue Fix: `wsl.exe --update --web-download`)
- [PowerToys](https://learn.microsoft.com/en-us/windows/powertoys/)
- [Jetbrains Toolbox](https://www.jetbrains.com/toolbox-app/)
- Install [scoop](https://scoop.sh/)
- Load [Keyboard Layout without Deadletters](assets/keyboard-layout-swiss-no-deadletters.klc) in MKLC. Build DLL and Setup Package. Run setup.exe. Keyboard can be selected.

### On Linux/Work

- vpn certificates
- Java installation
- secrets_env
- databricks.cfg

## Maintain

### Add new dotfile

1. `chezmoi add .crazyconfig`
2. `chezmoi apply`

### Get changes on other machine

`chezmoi update`

### Edit config file

Don't edit the file directly! chezmoi will not track those changes.

1. `chezmoi edit .crazyconfig`
2. `chezmoi apply`

### Badboi still edited the config file directly instead of using `chezmoi edit`

- Discard external edits: `chezmoi apply .crazyconfig`
- Keep external edits and add them to the repo: `chezmoi re-add .crazyconfig`
