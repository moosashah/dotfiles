alias acfg="nvim ~/dotfiles/antigen/aliases.zsh"
alias nvc="nvim ~/.config/nvim/init.lua"
alias zshconf="nvim ~/.zshrc"
alias soacfg="source ~/dotfiles/antigen/aliases.zsh"

alias vim="nvim"
alias vi="nvim"
alias nv="nvim"

#exa
alias ls="exa --oneline --all"
alias ll="exa --oneline --all --long --no-user"

#cat to bat
alias cat="bat"

# Yarn
alias yst='yarn start'
alias yd='yarn dev'
alias yb='yarn build'

# Git 
alias gss="git stash save -u"
alias gpnb="git push -u origin HEAD"
alias ghprme="gh pr create --assignee=@me --web"
alias ghprv="gh pr view --web"
alias cmh="npx ts-node -T ~/dotfiles/bin/cmh.ts"
alias gmsg="conventional-commit"
gspp(){
	git stash pop stash@{$1}
}
gpth(){ #Create patch from staged changes
	git diff --cached > "$1".patch 
}
ghpr() {
  GH_FORCE_TTY=100% gh pr list | fzf --ansi --preview 'GH_FORCE_TTY=100% gh pr view {1}' --preview-window down --header-lines 3 | awk '{print $1}' | xargs gh pr checkout
}



# networkQuality //test internet speed
alias speed="networkQuality"

#Personal Coding 
alias cdpc="cd ~/personalCoding"

#Make directory and cd into it
mkd(){
  mkdir $1 && cd $1
}

alias tm="tmux a -t dotfiles || tmux new -s dotfiles"

#Docker
alias dcu="docker compose up"
alias dcd="docker compose down"
alias dcl="docker volume rm medlify-plugin_dynamodata"
