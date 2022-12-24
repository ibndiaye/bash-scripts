#!/bin/bash


# source $(. ./setup.sh export)

LIST=("cava" "fish" "rofi" "neofetch" "kitty" "i3" "MangoHud" "ranger" "polybar" "starship.toml")

echo "Backing up..."

CONFIG_PATHS="$HOME/.config"
# GIT_REPO="$HOME/.brams_dots"
GIT_REPO="$HOME/Documents/GitHub/dotfiles"

#backup configs
echo "backing up configs"

for f in "${LIST[@]}"
do
  cp -r "$CONFIG_PATHS/$f" "$GIT_REPO/config"
done


echo "Backup with success to $GIT_REPO"

#Github section
#cd $GIT_REPO && git init && git remote add origin https://github.com/ibndiaye/dotfiles
read -r -p "push to github? y/n: " answer
if [[ "$answer" == "y" ]]
then
  read -p "Commit message: " commitMsg
  read -p "are you sure? (y/n)" verif
  if [[ "$verif" == "y" ]] 
  then
    cd $GIT_REPO && git add . && git commit -m "$commitMsg" && git pull && git push origin main
    echo "pushed with success"
  fi
  else
    echo "wont push to the hub...exiting"
fi
