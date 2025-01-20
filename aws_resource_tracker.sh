######################
#Date: 19/01/2025
#Author: Mansi Saxena
#Version:v1
#This script will report about the AWS resourse usage
######################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

set -x

echo 'Print s3 buckets'
#list s3 buckets and output get redirected to a file named resourceTracker
aws s3 ls >> resourceTracker

echo 'Print ec2 instances'
#list ec2 instances and output get redirected to a file named resourceTracker
#aws ec2 describe-instances --output json
aws ec2 describe-instances >> resourceTracker

echo 'Print lambda functions'
#list lambda functions and output get redirected to a file named resourceTracker
aws lambda list-functions >> resourceTracker

echo 'Print IAM users'
#list iam users and output get redirected to a file named resourceTracker
#aws iam list-users --output table
aws iam list-users >> resourceTracker

-- INSERT --
