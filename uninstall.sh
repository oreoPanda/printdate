#!/bin/bash

# Make sure the script is being run by root
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
    echo "You aren't running this install script as root, will ask for root password."
fi

# Remove the date insertion script from /usr/local/bin
$SUDO rm /usr/local/bin/printdate.sh
