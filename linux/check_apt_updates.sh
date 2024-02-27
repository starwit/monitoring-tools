#!/bin/bash

# This script checks how many apt packages can be updated or 0 if all is up to date.

updateVarNum=`/usr/lib/update-notifier/apt-check --human-readable` > /dev/null
packageNumber=`expr "$updateVarNum" : '\([0-9]*\)'`

if [ -z "${packageNumber}" ]; then
    echo "0"
else
    echo $packageNumber
fi
