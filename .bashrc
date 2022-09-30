
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[0;35m\W\e[0m \e[0;32m> \e[0m'

. "$HOME/.cargo/env"

source ~/.local/bin/bashmarks.sh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Aliases
alias :q="exit"
