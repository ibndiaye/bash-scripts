#!/bin/bash

cd && git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git
cd MangoHud
./build.sh build package release
rm -rf "$HOME/MangoHud"

pkglist=("gamemode" "protontricks" "steam" "wine" "game-devices-udev" "winetricks" "lutris" "heroic-games-launcher-bin" "goverlay-bin" "protonup-qt")

for p in "${pkglist[@]}"
do
  echo "installing $p"
  yay -S --needed "$p"
  echo "$p installed"
done



