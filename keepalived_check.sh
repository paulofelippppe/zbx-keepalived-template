#!/bin/bash
awk -F"=" '$1=="STATE" {print $2}' /var/run/keepalived_status_$1