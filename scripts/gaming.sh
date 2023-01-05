#!/bin/bash

pkglist=("gamemode" "truckersmp-cli" "protontricks" "grapejuice" 
"steam" "wine" "winetricks" "lutris" "mangohud" "lib32-mangohud" "heroic-games-launcher-bin" 
"goverlay-bin" "protonup-qt")

# read -r -p "Build Mangohud? (y/n)" input

# if [ "$input" == "y" ]
# then
#     cd && git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git && cd MangoHud && ./build.sh package release
#     rm -rf "$HOME/MangoHud"
# fi

read -r -p "Install Pkgs (y/n)" input
if [ "$input" == "y" ]
then
    for p in "${pkglist[@]}"
    do
        read -r -p "install $p?(y/n)" input
        if [ "$input" == 'y' ]
        then
            echo "installing $p"
            yay -S --needed "$p"
            echo "$p installed"
        else
                echo "skipping $p"
            fi
    done
    echo "done installing pkgs"
fi

grapejuice && steam && heroic

read -r -p "Set up Truckersmp? (y/n)" input
if [ "$input" == "y" ]
then
    if [ ! -d "$HOME/.local/share/truckersmp-cli" ]
    then
        truckersmp-cli -n hcj1ok
    fi
    ln -sf "/drives/hdd0/SteamLibrary/steamapps/compatdata/227300/pfx/drive_c/users/steamuser/Documents/Euro Truck Simulator 2" "/$HOME/.local/share/truckersmp-cli/Euro Truck Simulator 2/prefix/pfx/drive_c/users/steamuser/My Documents/" 
fi
