#!/bin/bash

cat /var/log/kern.log | grep -i usb | tail -n3
