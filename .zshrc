source ~/.nvm/nvm.sh
nvm use stable

export PATH=$PATH:$HOME/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:/usr/local/mysql/bin"

export HISTSIZE=5000
export HISTFILESIZE=10000

# export ANDROID_SDK=/Users/tangimds/Library/Android/sdk
# export PATH=/Users/tangimds/Library/Android/sdk/platform-tools:$PATH
# export PATH="$PATH:$HOME/.composer/vendor/bin"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export CLICOLOR=1

export ZSH="/Users/tangimds/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="> "
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=..
POWERLEVEL9K_VCS_BACKGROUND='087'
POWERLEVEL9K_VCS_FOREGROUND='250'

POWERLEVEL9K_VCS_CLEAN_FOREGROUND='250'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='028'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='250'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='214'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='250'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='027'

POWERLEVEL9K_DIR_HOME_BACKGROUND='061'
POWERLEVEL9K_DIR_HOME_FOREGROUND='250'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='061'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='250'

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# PS1=%{${fg[cyan]}%}'%~'%{$reset_color%}'
# %{${fg[magenta]}%}> %{$reset_color%}'
PS1=%F{cyan}'%~'%f'
%F{magenta}> %f'
RPROMPT='$(git_prompt_info)'

function mkcd()
{
	mkdir $1 && cd $1
}

function cdvs()
{
	cd $1 && code .
}

# ----------------------
# Global aliases
# ----------------------
alias vs='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias l="ls" # List files in current directory
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder


# ----------------------
# npm Aliases
# ----------------------
alias ns='npm start'
alias nstart='npm start'
alias nr='npm run'
alias nrun='npm run'
alias nd='npm run dev'
alias ndev='npm run dev'
alias ni='npm i'
alias nis='npm i -S'
alias ninit='npm init -y'

# ----------------------
# Git aliases
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