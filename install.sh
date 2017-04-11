#!/bin/bash

# Make sure the script is being run by root
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
    echo "You aren't running this install script as root, will ask for root password."
fi

# Copy the date insertion script to /usr/local/bin
$SUDO cp ./printdate.sh /usr/local/bin/

# Make sure the script is executable
$SUDO chmod a+x /usr/local/bin/printdate.sh

# Check if xvkbd is installed. If it isn't, warn the user.
if ! hash xvkbd 2>/dev/null; then
    echo "The virtual keyboard program xvkbd is missing. Please install it, otherwise printdate won't work."
fi
