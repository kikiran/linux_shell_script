#!/bin/bash

##################################
# Author: KIRAN
# Date: 18-08-2025
# version: 2
# This script was used to find the error logs in the file
###################################

set -x 
set -e
set -o pipefail

cat error.log | grep ERROR

curl https://raw.githubusercontent.com/kikiran/linux_shell_script/refs/heads/main/day-04/error.log | grep INFO | awk -F',' '{print $5}'