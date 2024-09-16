#!/bin/bash

#######################
#
# Author : Karthik Kunchala
#
# Date: 16/09/2024
#
# This is a script for checking the node health DISK, RAM, CPU Processers.
#
# Version: 0.1.0
#######################

set -x #debug mode
set -e #exits the script when an error occured
set -o pipefail  #looks for errors in pipe by deafult set -e not aware of pipe failures

df -h

free -g

nproc

#ps -ef | grep amazon | awk -F" " '{print $2}'
