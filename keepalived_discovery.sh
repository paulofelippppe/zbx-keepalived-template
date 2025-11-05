#!/bin/bash
INSTANCES=$(grep ^vrrp_instance /etc/keepalived/keepalived.conf | awk '{print $2}')
LINES=$(printf "$INSTANCES" | grep -c ^)
printf  '{\n'
printf  '\t"data":[\n'
printf "$INSTANCES\n" | while read instance; do
    printf "\t\t\t{\"{#INSTANCE}\":\"$instance\"}";
    N=$(($N + 1))
    if [ $N -eq $LINES ]; then
        printf '\n'
    else
        printf ',\n'
    fi
done;
printf ']}\n'