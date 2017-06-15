#/bin/bash

#This script will make your laptop very hot.
#It was made for a MacBook Pro, but should work fine on other UNiX-based systems.
#Starting 8 threads, for 8 cores.
echo "Heating up..."
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
cat /dev/zero > /dev/null&
echo "All systems go!"
read -p "Press any key to stop... " -n1 -s
#And will kill it 12 times to make sure it's dead.
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
killall cat
