#!/bin/bash

################################
# Author: KIRAN
# Date: 18-08-2025
# This script will display the system health
# Version-2
################################

set -x #debug mode
set -e #any error will reflect
set -o pipefail

df -h

free -g

nproc