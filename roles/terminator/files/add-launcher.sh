#!/bin/bash
# https://askubuntu.com/a/893500

SCHEMA="org.gnome.shell"
KEY="favorite-apps"

STATUS=$(gsettings get ${SCHEMA} ${KEY})

# Optional proof, whether value to add already exsists
if [[ $STATUS == *"'terminator.desktop'"* ]]; then
    echo "to.add.value is already in the list!"
else
    gsettings set ${SCHEMA} ${KEY} "${STATUS%]*}, 'terminator.desktop']"
    echo "Added to.add.value to the list."
fi
