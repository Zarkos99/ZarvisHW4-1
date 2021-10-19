#!/bin/bash
#This script sets the cpu frequency of the beaglebone to 600MHz then outputs
#information on the cpu. It then outputs the contents of the variable location
#as well as the number of items in the current working directories. 
#Example Usage: ./mySetup.sh

sudo cpufreq-set -f 600MHz	#Set cpu frequency to 600MHz
echo
cpufreq-info			#Display cpu information
echo
location=/home/debian
echo "Contents of variable location: $location"
echo
items=$(ls $PWD | wc -l)
echo "Their are $items items in this directory"
echo
