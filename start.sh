#!/usr/bin/env bash

# Generate configs
envtpl < /etc/kafkatcfg.j2 > ~/.kafkatcfg

if [[ -z $ZK_PATH ]]; then
    echo "ZK_PATH needs to be set"
    exit 1
else
    exec kafkat $*
fi


