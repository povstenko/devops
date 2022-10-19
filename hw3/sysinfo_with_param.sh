#!/bin/bash
#purpose: write system information to specified destination file

function parse_arguments() {
    if [ $# -eq 0 ]
    then
        print_help;
        exit 0
    fi

    while getopts "hd:" flag
    do
        case "${flag}" in
            h)  
                checkargs
                print_help;
                exit 0;;
            d)  
                checkargs
                destination=${OPTARG};;
            \? )
                echo "Invalid Option"
                exit 1;;
            *) echo "No reasonable options found!" 
                exit 1;;
        esac
    done
}

function checkargs() {
    if echo "$OPTARG" | grep -q '^-';
    then
        echo "Unknown argument $OPTARG for option $opt"
        exit 1
    fi
}

function print_help() {
    echo "Write system information to specified destination file"
    echo ""
    echo "Usage:"
    echo "  ./sysinfo.sh [-h] [-d DESTINATION]"
    echo "Optional arguments:"
    echo "  -h (help) show this message and exit"
    echo "  -d (destination) destination folder name (example: output.txt)"
}

###################
##    MAIN      ###
###################
parse_arguments "$@";

echo -e "\n>Current system date and time:" >> ${destination}
date >> ${destination}
echo -e "\n>Current user:" >> ${destination}
whoami >> ${destination}
echo -e "\n>System uptime, logged-in users and CPU load:" >> ${destination}
w >> ${destination}
echo -e "\n>Memory usage:" >> ${destination}
free -m >> ${destination}
echo -e "\n>Disk space usage:" >> ${destination}
df -h >> ${destination}
echo -e "\n>List of programs used open TCP ports:" >> ${destination}
ss -tulpn | grep '^tcp' >> ${destination}
echo -e "\n>Connection to ukr.net host:" >> ${destination}
ping -c 2 ukr.net >> ${destination}

echo ${destination}

#END