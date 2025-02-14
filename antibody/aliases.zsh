alias ac="nvim ~/dotfiles/antibody/aliases.zsh"
alias zshconf="nvim ~/.zshrc"
alias sc="source ~/dotfiles/antibody/aliases.zsh"
alias arg="alias | rg"

alias c="clear"
alias n="nvim"

alias lg="lazygit"
alias ldk="lazydocker"

#eza
alias ls="eza --oneline --all"
alias ll="eza --oneline --all --long --no-user"
alias le="eza --tree"

#cat to bat
alias cat="bat"

# yarn
alias ys='yarn start'
alias yb='yarn build'
alias yt='yarn test'
alias yl='yarn lint'
alias yr='yarn clean && yarn'
alias ysc='yarn && yarn build && yarn start'
alias yisc='yarn install --force && yarn build && yarn start'

yd(){
    if [[ -f "package-lock.json" ]]; then
        echo "using npm"
        npm i
        npm run dev
    elif [[ -f "yarn.lock" ]]; then
        echo "using yarn"
        yarn
        yarn dev
    elif [[ -f "pnpm-lock.yaml" ]]; then
        echo "using pnpm"
        pnpm i
        pnpm run dev
    elif [[ -f "bun.lockb" ]]; then
        echo "using bun"
        bun i
        bun run dev
    else
        echo "no lock file found"
        echo "using bun"
        bun i
        bun run dev
    fi
}

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

alias cdpc="cd ~/code"
alias cdnv="cd ~/dotfiles/nvim"

#make directory and cd into it
mkd(){
  mkdir -p $1 && cd $1
}

alias tm="tmux a -t 🌴 || tmux new -s 🌴"

#docker
alias dcu="docker compose up"
alias dcd="docker compose down"
alias dcs="docker compose stop"

#gopher
alias gt="go test"
alias gr="go run"

#Ripgrep search files
alias rgf="rg --files | rg"

#Httpie
alias http="http --format-options json.sort_keys:false"
