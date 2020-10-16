source ~/.nvm/nvm.sh
nvm use stable

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

export ANDROID_SDK=/Users/tangimds/Library/Android/sdk
export PATH=/Users/tangimds/Library/Android/sdk/platform-tools:$PATH

export CLICOLOR=1

export ZSH="/Users/tangimds/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

PS1=$fg[cyan]'%~'$reset_color'
$fg[magenta]> $reset_color'
RPROMPT='$(git_prompt_info)'

function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Global Aliases
# -------
alias vs='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias run='npm run'
alias ni='npm i'
alias nis='npm i -S'
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'

#%(?:%{%}➜ :%{%}➜ ) %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)
