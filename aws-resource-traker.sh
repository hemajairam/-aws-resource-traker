
#!/bin/bash

###########################
# Author: Hema
# Date: 2/20/2025
# Version: v1
#
# This script reports AWS resource usage
###########################

set -x  # Debug mode to show command execution

# AWS Resources to List:
# - S3 Buckets
# - EC2 Instances
# - Lambda Functions
# - IAM Users

# List S3 Buckets
echo "Printing list of S3 buckets..."
aws s3 ls

# List EC2 Instances
echo "Printing list of EC2 instances..."
aws ec2 describe-instances --query 'Reservations[*].Instances[*].InstanceId' --output table

# List Lambda Functions
echo "Printing list of Lambda functions..."
aws lambda list-functions --query 'Functions[*].FunctionName' --output table

# List IAM Users
echo "Printing list of IAM users..."
aws iam list-users --query 'Users[*].UserName' --output table
