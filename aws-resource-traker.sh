
#!/bin/bash


###########################
# Author:Hema
# Date:2/20/2025
#
# Version:v1
#
# This script will report the AWS resource usage
# ####################
set -x
#
#
# AWS S3
# AWs Ec2
# AWS Lambda
# AWS IAM users
#
# List S3 buckets
echo"print list of s3 buckets"
aws s3 ls

# List EC2 instance
echo"print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List lambda
echo"print list of lambada functions"
aws lambda list-functions

#IAM List the user
echo"print list of iam users"
aws iam list-users
