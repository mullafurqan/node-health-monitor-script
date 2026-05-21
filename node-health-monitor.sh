#!/bin/bash
#
#
#
#############################################
#Author:Furqan
#Date:21-05-2026
#
#
#This script provides the Health of the node
#
#
#############################################
#
#In Debug mode
set -e

#If any error occurs exit the script
set -x

#exit if there is pipeline error
set -o pipefail

#For disk space in Human readable language
df -h

#To display system memory in Gigabytes
free -g

#To display system processes
top

#To display number of system process
nproc

#To display number of running process
ps -ef | grep usr | awk '{print $2}'
