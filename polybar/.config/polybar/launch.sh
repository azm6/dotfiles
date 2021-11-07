#!/usr/bin/env bash

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

export ETH_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
export WLAN_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

# polybar main -r &
polybar mainBar -c $HOME/.config/polybar/config.ini &