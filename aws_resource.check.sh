#!/bin/bash
################################
## Author: KIRANKUMAR
## Date: 30-10-2024
## Version : v1
## This script output the list of aws resources in your account
################################
#AWS S3
#AWS EC2
#AWS LAMBDA
#AWS IAM Users

set -x
#list of S3 buckets
echo 'Print list of S3 buckets'
aws s3 ls

#list of EC2 instances
echo 'Print list of EC2 instances'
aws ec2 describe-instances

#list of lambda 
echo 'Print list of Lambda functions'
aws lambda list-functions

#list of IAM users
echo 'Print list of IAM Users'
aws iam list users

