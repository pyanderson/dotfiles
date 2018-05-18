# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME='amuse'

# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY='true'

source $ZSH/oh-my-zsh.sh

# User configuration

# Language environment
export LANG=en_US.UTF-8

# Aliases
alias vi='vimx'
alias vim='vimx'
alias :q='exit'
alias :q!='exit'

# Config
alias zshconfig='vi $HOME/.zshrc'
alias ohmyzsh='vi $HOME/.oh-my-zsh'

# C++
alias cpp='g++ -std=c++11 -o a'

# Python
alias p='python'

# Go
export GOPATH=~/go/
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
gocd(){ cd `go list -f '{{.Dir}}' .../$1`}

# Virtual environment
alias wo='workon'
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/python-projects

# Django
alias pm='p manage.py'
alias dr='pm runserver 0.0.0.0:8000'
alias pms='pm shell'
alias pmm='pm migrate'
alias pmmk='pm makemigrations'
alias pmcs='pm createsuperuser'

# Git
alias g='git'
alias gi='g init'
alias gs='g status'
alias ga='g add'
alias gd='g diff'
alias gc='g commit -m'
alias gch='g checkout'
alias gps='g push origin'
alias gpl='g pull origin'
alias gclear='g branch | grep -v "master" | xargs g branch -D '

# Preferred editor for local and remote sessions
export EDITOR='vi'

# docker
# format ps .ID .Image .Command .CreatedAt .RunningFor .Ports .Status .Size .Names .Labels .Label .Mounts
alias dps='docker ps --format "table {{.Names}}\t{{.Image}}"'
alias drm='docker ps -q | xargs docker rm'
alias drme='docker ps -a | grep Exit | cut -d " " -f 1 | xargs docker rm'
alias drmi='docker images -q | xargs docker rmi'
alias drmdang='docker rmi $(docker images -f "dangling=true" -q)'

function dclear(){
	drm
	drmi
}

# redhat distros
function dgroup(){
	sudo groupadd docker
	sudo gpasswd -a ${USER} docker
	sudo systemctl restart docker
	newgrp docker
}

function dapocalipse(){
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
	docker images -a -q | xargs docker rmi -f
}

# dokku
function dokku_add_key(){
	cat $1 | ssh $2 "sudo sshcommand acl-add dokku [$3]"
}
