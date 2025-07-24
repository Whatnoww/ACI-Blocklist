#!/bin/bash

# Run this in the blocklist directory
#
# sort -u blocklist > blocklist could be used instead
# but the list would be sorted

checkadd () {
    s=$(echo "$1" | xargs)
    if [ -n "$s" ]; then
        if ( grep -qx "$s," blocklist ); then
            echo -e "$s \t - already in list"
        else
            echo -e "$s \t - added"
            echo "$s," >> blocklist
        fi
    fi

}

while [ -n "$1" ]; do
    if [ -f "$1" ]; then
        while read -r entry; do
            checkadd $entry
        done < $1
    else
        checkadd $1
    fi
    shift
done


