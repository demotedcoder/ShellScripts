#!/bin/bash

echo "testing wait command 1" &
process_id=$!
echo "testing wait command 2" &
#wait $process_id
echo "command 1 is completed"
echo "command 2 is completed"

echo "testing wait comm"
sleep 5 &
pid=$!
kill $pid
wait $pid
echo "$pid was terminated"
