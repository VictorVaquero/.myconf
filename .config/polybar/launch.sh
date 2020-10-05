#!/usr/bin/env bash


# Finish already runnign bars
killall -q polybar

# Launch my bars with logs included
echo "---" | tee -a /tmp/polybar_i3bar.log

polybar i3bar >> /tmp/polybar_i3bar.log 2>&1 &

echo "Bars launched..."
