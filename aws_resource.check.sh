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

set -X
#list of S3 buckets
aws s3 ls

#list of EC2 instances
aws ec2 describe-instances

#list of lambda 
aws lambda list-functions

#list of IAM users
aws iam list users

