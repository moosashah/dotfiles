# Dotfiles

## Terminal 
Trying out Wezterm
- Config is in lua :) 
- It has ligatures
- Picks up option key so nvim keymaps can actually use correct key

## Antibody
- Zsh plugin manager
cmd to generate static plugin file - doesn't work inside of ./install for some reason
`antidote bundle <~/dotfiles/antibody/plugins.txt >~/dotfiles/antibody/plugins.zsh`

## Bin

### tmux-sessionzier
  switch between/open tmux sessions with fuzzy finding
### gtc
  stash and drop stash to clean changes

## Dotbot
`install.conf.yaml` sets up symlinks from dotfiles to $HOME/.config 

```sh
./install
```

## lazydocker
tui for docker

## lazygit
tui for git

## Archive
- alacritty
- iterm2
