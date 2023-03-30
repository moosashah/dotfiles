alias ac="nvim ~/dotfiles/antigen/aliases.zsh"
alias nc="cd ~/.config/nvim && nv init.lua"
alias zshconf="nvim ~/.zshrc"
alias sc="source ~/dotfiles/antigen/aliases.zsh"

alias n="nvim"
alias c="clear"
alias w="which"

alias lg="lazygit"

#exa
alias ls="exa --oneline --all"
alias ll="exa --oneline --all --long --no-user"

#cat to bat
alias cat="bat"

# Yarn
alias yst='yarn start'
alias yd='yarn dev'
alias yb='yarn build'
alias yt='yarn test'

# Npm
alias nrd='npm run dev'
alias nri='npm install'

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

alias cdpc="cd ~/personalCoding"
alias cdnv="cd ~/dotfiles/nvim"

#Make directory and cd into it
mkd(){
  mkdir -p $1 && cd $1
}

alias tm="tmux a -t dotfiles || tmux new -s dotfiles"
alias tmk="tmux kill-sess -t"
alias tml="tmux ls"

#Docker
alias dcu="docker compose up"
alias dcd="docker compose down"
alias d="docker"
