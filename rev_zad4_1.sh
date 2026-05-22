#!/bin/bash

ifconfig | grep "RX packets" | tr -s ' ' | sort -nr -k5 | head -n1 | cut -d ' ' -f4
