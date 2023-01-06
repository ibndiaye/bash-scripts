#!/bin/bash

pkill -f tmux
echo "killed tmux"
tmux new-session -d -s asf "cd /mnt/media/scripts/ASF && chmod +x ArchiSteamFarm && ./ArchiSteamFarm; exec $SHELL"
echo "session created"
tmux ls