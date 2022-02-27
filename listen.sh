#!/bin/bash
GATEWAY=$(route -n | grep 'UG[ \t]' | awk '{print $2}')

ping $GATEWAY -D -i 1 >> wan.txt & ping -D 1.1.1.1 -i 1 >> lan.txt
