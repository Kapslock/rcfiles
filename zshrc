# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/opt/python@3.10/libexec/bin:/usr/bin:$PATH
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
# Path to your oh-my-zsh installation.
export ZSH="/Users/kapil.dua/.oh-my-zsh"
export AIRFLOW_HOME=~/airflow
export DEPLOYMENT=us_prod
export ZOO=development
export INFRA_ZOO=development
export VENV_DIR=~/workspace/venv/infra
export LDFLAGS="-L /opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I /opt/homebrew/opt/openssl@1.1/include"
export CRYPTOGRAPHY_DONT_BUILD_RUST=1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv pip python redis-cli )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
alias zshconfig='gvim ~/.zshrc'

# Virtual Environment
alias infra='source ~/workspace/venv/infra/bin/activate'
alias cook='source ~/workspace/venv/cooker/bin/activate'
alias c3='source ~/venv/cooker3/bin/activate'
alias c36='source ~/venv/cooker36/bin/activate'
alias py3='source ~/venv/py3/bin/activate'
alias cure='source ~/venv/cure/bin/activate'
alias szsh='source ~/.zshrc .'
# ssh
alias curedev='ssh 172.17.69.44'
alias mydev='ssh 172.17.69.101'
alias sofia='ssh 172.17.47.30'
alias stage='ssh 172.17.135.104'
alias prod='ssh 172.17.72.145'

# epg-etls
alias ardenti='ssh ubuntu@172.17.1.155'
alias evo='ssh ubuntu@172.17.15.107'

# master-ingest
alias msi_prod='ssh 172.17.43.91'
alias msi_dev2='ssh 172.17.35.42'
alias msi_qa='ssh 172.17.46.130'
alias msi_stage='ssh 172.17.37.66'



# git
alias gs='git status'
alias gf='ydiff -s' 
alias gcom='git commit -am'
alias gcp='git checkout prerelease'
alias gc='git checkout'
alias gl="git log -n 15 --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"


# directory
alias work='cd ~/workspace/cooker/'
alias raw='cd ~/dp4-data/'

# Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## AWS ##
alias as3='aws s3 sync'

## DEPLOY ##
alias dtsstage='DEPLOYMENT=us_prod INFRA_ZOO=dtsstage ZOO=dtsstage make publish deploy'
alias sofiazoo='DEPLOYMENT=us_prod INFRA_ZOO=sofiazoo ZOO=sofiazoo make publish deploy'
alias devzoo='DEPLOYMENT=us_prod INFRA_ZOO=development ZOO=development make publish deploy'

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
