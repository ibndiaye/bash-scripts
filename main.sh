#!/bin/bash
#
#initially created 2 dec 2022     
printf "Quick Setup Script\n 1) Setup Section\n 2) Install Section \n 3) Backup + Push to Github\n"
read -p "Selection: " input


input=false

while ! $input 
do
  if (( $input == 1 ))
  then
      source scripts/setup.sh
      input=true
      elif (( $input==2 ))
      then
          source scripts/install.sh
          input=true
          elif (( $input==3 ))
          then
              source scripts/backup.sh
              input=true
              else
                echo "no input given"
                input=true
  fi
done

# export $LIST="/scripts/backup.sh"
