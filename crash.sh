#!/bin/bash

# Colors

Red='\033[0;31m'
Green='\033[0;32m'
Clear='\033[0m'

echo "Use keyboard shortcut ctrl+c to exit."
echo "Type 0 for bash fork."
echo "Type 1 for perl fork (Use sudo apt install perl to install perl)"
echo -e "${Red}Will crash your computer!"

read option

main() {
    if [ $option == 0 ]; then
        echo -e "${Green}In 6 seconds, this bash fork bomb will run.${Clear}"
        sleep 1
        echo -e "${Green}Press ctrl+c to exit.${Clear}"
        sleep 5
        echo -e "${Red}Fork Bomb!!11111!1!!${Clear}"
        :() { : | : & }
        :
    elif [ $option == 1 ]; then
        echo -e "${Green}In 5 seconds, this perl fork bomb will run.${Clear}"
        sleep 1
        echo -e "${Green}Exit with ctrl+c.${Clear}"
        sleep 4
        echo -e "${Red}Perl Fork Bomb!!!1!1!11111111"${Clear}
        perl -e "fork while fork" &
    else
        echo -e "${Red}Choose something valid. Exiting... Goodbye!${Clear}"
        exit 1
    fi
}

main
