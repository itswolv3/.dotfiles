# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Uncomment to run tmux at terminal start
# [[ -z "$TMUX" ]] && exec tmux

# Path to your oh-my-bash installation.
export OSH=/home/$USER/.oh-my-bash
# Theme selection
OSH_THEME="mairan"
# Let OMB use sudo
OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

alias pys="source venv/bin/activate"
alias py="python3"
alias docker="sudo docker"

alias update="./.update.sh"
alias top="bpytop"
alias :q="exit"

source "$OSH"/oh-my-bash.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
