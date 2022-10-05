# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

# Uncomment to run tmux at terminal start
# [[ -z "$TMUX" ]] && exec tmux

# Path to your oh-my-bash installation.
export OSH=/home/wolv3/.oh-my-bash
# Theme selection
OSH_THEME="rr"
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

source "$OSH"/oh-my-bash.sh
