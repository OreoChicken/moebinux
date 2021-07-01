#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
#while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar example --config="/home/oreo/.config/polybar/config" &
polybar center --config="/home/oreo/.config/polybar/config" &
polybar right --config="/home/oreo/.config/polybar/config" &

echo "Bar launched..."
