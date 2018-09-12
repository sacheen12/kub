#!/bin/bash

export AWS_ACCESS_KEY_ID=ThyFreeFolk
export AWS_SECRET_ACCESS_KEY=YouShallNotPass
export EC2_REGION=ap-southeast-2
export AWS_DEFAULT_REGION=ap-southeast-2

hal config storage s3 edit \
    --access-key-id $AWS_ACCESS_KEY_ID \
    --secret-access-key \
    --region $EC2_REGION

# hal config storage edit --type s3
