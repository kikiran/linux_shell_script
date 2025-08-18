#!/bin/bash

################################
# Author: KIRAN
# Date: 18-08-2025
# This script will display the system health
# Version-1
################################

set -x #debug mode

df -h

free -g

nproc