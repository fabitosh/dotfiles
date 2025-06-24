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

### Diff tool for `chezmoi diff`

```toml
~/.config/chezmoi/chezmoi.toml
[diff]
    command = "delta"
    pager = "delta"
```

## Manual Steps that I think are needed

- homebrew/scoop installation
- ssh key generation and auth on github
- oh-my-zsh and package installs
...
