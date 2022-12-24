#!/bin/bash
#
#initially created 2 dec 2022     
printf "Quick Setup Script\n 1) Setup Section\n 2) Install Section\n 4) Gaming Section\n"
read -p "Selection: " input


case $input in 
  1) source scripts/setup.sh;;
  2) source scripts/install.sh;;
  3) source scripts/backup.sh;;
  4) source scripts/gaming.sh;;
  *) echo "nothing chosen"
    exit
esac

# while ! $input 
# do
  # if (( $input == 1 ))
  # then
  #
  #     input=true
  #     elif (( $input==2 ))
  #     then
  #         source scripts/install.sh
  #         input=true
  #         elif (( $input==3 ))
  #         then
  #             source scripts/backup.sh
  #             input=true
  #           elif (( $input == 4))
  #           then
  #               source scripts/gaming.sh
  #               input=true
  #             else
  #                 echo "no input given"
  #                 input=true
  # fi
# done



# export $LIST="/scripts/backup.sh"
