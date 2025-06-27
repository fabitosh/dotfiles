#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title open_rider_or_pycharm
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Opens Rider if it is running and PyCharm otherwise
# @raycast.author Fabio Meier
# @raycast.authorURL https//github.com/fabitosh

# Bind to a hotkey in Raycast to quickly switch to the IDEs

if pgrep -f "Rider" >/dev/null; then
  open -a "Rider"
else
  open -a "PyCharm"
fi
