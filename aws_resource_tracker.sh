#!/bin/bash


#########################
# Author: uday reddy
# Date: 12th NOV
#
# Version: v1
#
#This script will AWS resource usage
####################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
set -x
#list s3 buckets

echo "print list of S3 buckets"
aws s3 ls

#List ec2 instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances

#List Lambda
echo "print all lambda fnctions"
aws lambda list-functions

#list IAM users
echo "list all IAM users"
aws iam list-users | jq '.Users[].UserId'
