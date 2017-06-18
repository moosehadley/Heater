#!/bin/bash

#This script will make your laptop very hot.
#It was made for a MacBook Pro, but should work fine on other UNiX-based systems.
#Starting 8 threads, for 8 cores.
echo "Heating up..."

#Subtract one core. We start counting from Zero.
NUM_CORES=7
PIDS=()

for i in $(seq 0 $NUM_CORES); do
  echo $i
  cat /dev/zero > /dev/null &
  PIDS+=($!)
done

read -p "Press any key to stop..." -n1 -s

for i in "${PIDS[@]}"; do
  kill $i
done
