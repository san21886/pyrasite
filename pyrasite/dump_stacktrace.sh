#!/bin/bash

pid=$1

usage(){
    echo "Usage:"
    echo "$0 <pid>"
    exit 255
}

if [[ -z $pid ]];then
    echo "Please provide pid as first argument"
    usage
fi

payload="payloads/dump_stacks.py"

python main.py $pid $payload --verbose --output localterm --ipc-timeout 10