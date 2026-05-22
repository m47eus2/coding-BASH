#!/bin/bash

tail -n +2 trees.txt | grep chronione | grep brzoza | sort -nr -t, -k3 | cut -d, -f3 | head -n 2 > output.txt
