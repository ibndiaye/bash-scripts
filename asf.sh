#!/bin/bash
#

# pkill -f tmux
tmux new-session -d -s "asf" 'cd /mnt/media/scripts/ASF && ./ArchiSteamFarm.sh'
tmux list-sessions
