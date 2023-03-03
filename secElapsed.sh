#!/bin/bash

TIMEFORMAT="IT TOOK %R secs to complete this task..."

time {
	for i in {1..3}
	do
		echo "Writing code in curly...."
	done
}
