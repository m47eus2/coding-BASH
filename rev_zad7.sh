#!/bin/bash

tail -n +2 $1 | tr -s ' ' | sort -t ' ' -nr -k4 | head -n 3 | cut -d ' ' -f 1 | sort
