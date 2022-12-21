#!/bin/bash
#
#initially created 2 dec 2022     
printf "Quick Setup Script\n 1) Setup Section\n 2) Install Section \n 3) Backup + Push to Github\n"
read -p "Selection: " input


if (( $input == 1 ))
then
    source scripts/setup.sh
fi

if (($input==2))
then
    source scripts/install.sh
fi

if (($input==3))
then
    source scripts/backup.sh
fi


# export $LIST="/scripts/backup.sh"
