alias ac="nvim ~/dotfiles/antigen/aliases.zsh"
alias nc="cd ~/dotfiles/nvim && nvim init.lua"
alias zshconf="nvim ~/.zshrc"
alias sc="source ~/dotfiles/antigen/aliases.zsh"
alias arg="alias | rg"

alias n="nvim"
alias c="clear"
alias w="which"

alias lg="lazygit"
alias ldk="lazydocker"

#exa
alias ls="exa --oneline --all"
alias ll="exa --oneline --all --long --no-user"
alias le="exa --tree"

#cat to bat
alias cat="bat"

# yarn
alias ys='yarn start'
alias yd='yarn dev'
alias yb='yarn build'
alias yt='yarn test'
alias yl='yarn lint'
alias yr='yarn clean && yarn'
alias ysc='yarn && yarn build && yarn start'

# npm
alias nrd='npm run dev'
alias nri='npm install'
alias nrs='npm run start'

# bun
alias brd='bun run dev'
alias brt='bun run test'

# git 
alias gss="git stash save -u"
alias gpnb="git push -u origin HEAD"
alias ghprme="gh pr create --assignee=@me --web"
alias ghprv="gh pr view --web"
gspp(){
	git stash pop stash@{$1}
}
gpth(){ #Create patch from staged changes
	git diff --cached > "$1".patch 
}
ghpr() {
  GH_FORCE_TTY=100% gh pr list | fzf --ansi --preview 'GH_FORCE_TTY=100% gh pr view {1}' --preview-window down --header-lines 3 | awk '{print $1}' | xargs gh pr checkout
}

alias cdpc="cd ~/personalCoding"
alias cdnv="cd ~/dotfiles/nvim"

#make directory and cd into it
mkd(){
  mkdir -p $1 && cd $1
}

alias tm="tmux a -t 🌴 || tmux new -s 🌴"
alias tmk="tmux kill-sess -t"
alias tml="tmux ls"
alias t="tmux"
alias tmd="tmux detach"

#docker
alias dcu="docker compose up"
alias dcd="docker compose down"
alias dcs="docker compose stop"

#gopher
alias gt="go test"
alias gr="go run"

#Ripgrep search files
alias rgf="rg --files | rg"

alias http="http --format-options json.sort_keys:false"
