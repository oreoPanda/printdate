#!/bin/bash

# Make sure the script is being run by root
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
    echo "You aren't running this install script as root, will ask for root password."
fi

# Copy the date insertion script to /usr/local/bin
$SUDO cp ./autodate.sh /usr/local/bin/

# Make sure the script is executable
$SUDO chmod a+x /usr/local/bin/printdate.sh
