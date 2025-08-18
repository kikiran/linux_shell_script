#!/bin/bash

##################################
# Author: KIRAN
# Date: 18-08-2025
# version: 1
# This script was used to find the error logs in the file
###################################

set -x 
set -e
set -o pipefail

cat error.log | grep ERROR