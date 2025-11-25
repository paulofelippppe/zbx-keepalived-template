#!/bin/bash
printf "$1 $2\nSTATE=$3\nPRIORITY=$4" > /var/run/keepalived_status_$2