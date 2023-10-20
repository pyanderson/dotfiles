
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="frisk"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenvwrapper)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Editor
export EDITOR=nvim

# Config Folder
export XDG_CONFIG_HOME="$HOME/.config"

# Alias

## Lazyness
alias vi='nvim'
alias vim='nvim'
alias :q='exit'
alias :q!='exit'

# Virtualenvwrapper
alias wo='workon'
alias mkv='mkvirtualenv -a $(pwd)'

## Config
alias zshconfig='vi $HOME/.zshrc'

## Vim
alias clear_session='rm $HOME/.vim/sessions$(pwd)/session.vim'

# Plugins configuration
