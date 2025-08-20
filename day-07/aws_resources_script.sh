#!/bin/bash
#############################################
# Author: KIRAN
# Date: 22-08-2025
# Version: 1
# This is to check resource of you aws account
#
# usage: ./aws_resources_script.sh <region> <service>
# example: ./aws_resources_script.sh us-east-1 ec2
###############################################

#check if the no.of arguments passed in command line
if [ $# -ne 2 ]; then
    echo 'usage: ./aws_resources_script.sh <region> <service>'
    echo 'example: ./aws_resources_script.sh us-east-1 ec2'
    exit 1;
fi

#Assigning variable to pass the region and service
aws_region=$1
aws_service=$2

#check if the aws CLI is installed or not
if ! command -v aws &> /dev/null; then
    echo 'AWS CLI is not installed please check and try again'
    exit 1
fi

#check if the aws configured or not
if [ ! -d ~/.aws ]; then
    echo 'AWS is not configured please check and try again'
    exit 1
fi

#List out the resources based on service
case $aws_service in 
    ec2)
        echo "Listing all the EC2 instaces $aws_region"
        aws ec2 describe-instances --region $aws_region
    ;;
    vpc)
        echo "Listing VPCs in $aws_region"
        aws ec2 describe-vpcs --region $aws_region
    ;;
    s3)
        echo "Listing S3 Buckets in $aws_region"
        aws s3api list-buckets --region $aws_region
    ;;
esac
