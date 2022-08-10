#!/bin/bash

# Colors

Red='\033[0;31m'
Green='\033[0;32m'
Clear='\033[0m'

echo "Type 1 for installing packages for Debian based distros. (Uses apt)"
echo "Type 2 for installing packages for Red Hat based distros. (Uses dnf)"

read option

# Check if number is not a number. If it is not a number, exit.

re='^[0-9]+$'
if ! [[ $option =~ $re ]]; then
    echo -e "${Red}Error: Not a number${Clear}" >&2
    exit 1
fi

if [ $option -eq 1 ]; then
    sudo apt install perl ruby
    echo -e "${Green}Done!${Clear}"
    exit 0
elif [ $option -eq 2 ]; then
    sudo dnf install perl ruby
    echo -e "${Green}Done!${Clear}"
    exit 0
else
    echo -e "${Red}Error! Enter a valid number. Exiting!${Clear}"
fi
