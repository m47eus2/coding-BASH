#!/bin/bash

function sum {
	echo $(($1 + $2))
}

echo $(sum $1 $2)
