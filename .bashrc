# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/reeceeric82/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="mairan"

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

source "$OSH"/oh-my-bash.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/reeceeric82/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/reeceeric82/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/reeceeric82/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/reeceeric82/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Custom Alias:
alias pys="source venv/bin/activate"
alias py="python3"
alias mkpyv="python3 -m venv venv"

alias docker="sudo docker"

alias update="./.update.sh"
alias top="bpytop"
alias :q="exit"

# Functions:
function agc() { ag "$@" ./; }

# Rust:
# . "$HOME/.cargo/env"


# Load Angular CLI autocompletion.
source <(ng completion script)

# Created by `pipx` on 2024-05-29 12:33:54
export PATH="$PATH:/home/reeceeric82/.local/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
