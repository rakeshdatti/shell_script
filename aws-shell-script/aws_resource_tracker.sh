#!/bin/bash

####################
# Author: Rakesh
# Date: 27/07/25

#Version: v1
# This Script will report the AWS resource usage
####################


set -x

# AWS S3
# AWS EC2
# AWS LAMDA
# AWS IAM USERS


# list s3 buckets
echo "PRINT LIST S3 BUCKETS"
aws s3 ls > resourceTracker

#list ec2 instances 
echo "print list of ec2"
#aws ec2 describe-instances
aws ec2 describe-instances --query 'Reservations[].Instances[].InstanceId' --output text >> resourceTracker

#list aws landa functions
echo "print the list of lambda functions"
aws lambda list-functions >> resourceTracker

#list the IAM USERS
echo "print the list of users" 
aws iam list-users >> resourceTracker


