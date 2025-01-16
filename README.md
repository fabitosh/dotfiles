# dotfiles
Using [chezmoi](https://www.chezmoi.io/quick-start/) to share configuration files across multiple systems.

## Auto-commit changes
```toml
~/.config/chezmoi/chezmoi.toml
[git]
    autoCommit = true
    autoPush = true
``` 

## Add new dotfile
1. Edit the file
2. `chezmoi add .crazyconfig`
3. `chezmoi apply`

## Get changes on other machine
`chezmoi update`

## Edit config file
Don't edit the file directly! chezmoi will not track those changes.  
1. `chezmoi edit .crazyconfig`
2. `chezmoi apply`

### Work in the editor of choice
Set `export EDITOR='nvim'` in `.zshrc`
