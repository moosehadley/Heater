#!/bin/bash

#This script will make your laptop very hot.
#It was made for a MacBook Pro, but should work fine on other UNiX-based systems.
echo "Heating up..."

#Determines number of available logical cores (hyperthreading-aware)
NUM_CORES=$(getconf _NPROCESSORS_ONLN 2>/dev/null || getconf NPROCESSORS_ONLN 2>/dev/null || echo 1)
PIDS=()

for i in $(seq 1 $NUM_CORES); do
  echo $i
  cat /dev/zero > /dev/null &
  PIDS+=($!)
done

read -p "Press any key to stop..." -n1 -s
echo

for i in "${PIDS[@]}"; do
  kill $i
done
