#!/bin/bash

if [[ $(id -u) -ne 0 ]]
then
    echo "This script must be run as root!"
    exit 1
fi

mkdir -pvZ /usr/share/nemo/actions
cp -rvZ ./actions/* /usr/share/nemo/actions
chmod -v +r /usr/share/nemo/actions/qvm*
