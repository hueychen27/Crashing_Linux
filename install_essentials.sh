#!/bin/bash

# Colors

Red='\033[0;31m'
Green='\033[0;32m'
Clear='\033[0m'

echo "Type 1 for installing packages for Debian based distros. (Uses apt)"
echo "Type 2 for installing packages for Red Hat based distros. (Uses dnf)"
echo "Type 3 for installing packages for Arch Linux based distros. (Uses pacman)"

printf ">> "
read option

re='^[0-9]+$'
if ! [[ $option =~ $re ]]; then
    echo -e "${Red}Error: Not a number${Clear}" >&2
    exit 1
fi

if [ $option == 1 ]; then
    sudo apt install perl ruby java
    echo -e "${Green}Done!${Clear}"
    exit 0
elif [ $option == 2 ]; then
    sudo dnf install perl ruby java-1.8.0-openjdk.x86_64
    echo -e "${Green}Done!${Clear}"
    exit 0
elif [ $option == 3 ]; then
    sudo pacman -S perl ruby jdk-openjdk jre-openjdk 
    echo -e "${Green}Done!${Clear}"
    exit 0
else
    echo -e "${Red}Error! Enter a valid number. Exiting!${Clear}"
    exit 1
fi
