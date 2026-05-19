alias zshconf="nvim ~/.zshrc"
alias sc="source ~/dotfiles/antibody/aliases.zsh"
alias arg="alias | rg"

alias c="clear"
alias n="nvim"
alias ..='cd ..'

# alias cc="claude --allow-dangerously-skip-permissions --model claude-opus-4-6"
alias cc="codex"

alias lg="lazygit"
alias ldk="lazydocker"

#eza
alias ls="eza --oneline --all"
alias ll="eza --oneline --all --long --no-user"
alias le="eza --tree"

#cat to bat
alias cat="bat"


# git 
alias ghprme="gh pr create --assignee=@me --web"

alias cdpc="cd ~/code"
alias cdnv="cd ~/dotfiles/nvim"

#make directory and cd into it
mkd(){
  mkdir -p $1 && cd $1
}

alias tm="tmux a -t 🌴 || tmux new -s 🌴"

#gopher
alias gt="go test"
alias gr="go run"

#Ripgrep search files
alias rgf="rg --files | rg"

#Httpie
alias http="http --format-options json.sort_keys:false"
