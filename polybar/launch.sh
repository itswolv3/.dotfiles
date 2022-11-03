#!/usr/bin/bash/env bash

# Terminate already running polybar instances
# if all your bars have ipc enabled, use:
# polybar-msg cmd quit
# Otherwise you can usethe nuclear option
killall -q polybar

# Launch polybar
polybar & disown

echo "Polybar launched"
