#!/bin/bash

cat "$1" | grep -v "^# " | tr -s '\n'