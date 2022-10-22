#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
    echo "This script must be run as root!"
    exit 1
fi

mkdir -p /usr/share/nemo/actions
cp -r ./actions/* /usr/share/nemo/actions
chmod +r /usr/share/nemo/actions/qvm*
