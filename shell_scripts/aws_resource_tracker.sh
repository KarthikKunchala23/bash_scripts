#!/bin/bash

############################
# Author: Karthik Kunchala
#
# Date: 16/09/2024
#
# Version: 0.1.0
#
# This script will get the resources report which are ruuning on AWS Cloud
############################

set -x
set -e
set -o pipefail

#List S3 Buckets
echo "########### S3 list ###########"
aws s3 ls

#List EC2 Instances
echo "########### EC2 list ###########"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List of Lambda Functions
echo "########### Lambda Functions list ###########"
aws lambda list-functions

#List IAM Users
echo "########### IAM Users list ###########"
aws iam list-users

