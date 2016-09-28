# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Android
export ANDROID_HOME=~/android-studio/android-sdk-linux/

# Path to your oh-my-zsh installation.
export ZSH=/home/thekiller/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="mh"

# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git python pip django)

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
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"

# Python
alias p='python'

# Virtual environment
alias wo='workon'

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

# C++
alias cpp='g++ -std=c++11 -o a'

# Preferred editor for local and remote sessions
export EDITOR='vi'

