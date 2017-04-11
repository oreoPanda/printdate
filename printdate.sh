#!/bin/bash

# Use xvkbd to print the string "Hello, world!"
# to the focused window.

xvkbd -text "$(date "+%A, %d. %B %Y %R:%S")"
