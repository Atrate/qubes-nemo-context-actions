#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
    echo "This script must be run as root!"
    exit 1
fi

mkdir -pZ /usr/share/nemo/actions
cp -rZ ./actions/* /usr/share/nemo/actions
chmod +r /usr/share/nemo/actions/qvm*
