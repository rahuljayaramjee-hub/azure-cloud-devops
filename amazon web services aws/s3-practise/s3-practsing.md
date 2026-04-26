# AWS S3 Practice for perfection 

## What I did
- Configured AWS CLI
- Created a bucket
- Uploaded a file
- Downloaded the file
- Uploaded a folder

## Commands
aws configure
aws s3 ls
aws s3 mb s3://rahul-devops-demo-12345
aws s3 cp file.txt s3://rahul-devops-demo-12345
aws s3 cp s3://rahul-devops-demo-12345/file.txt .
aws s3 cp app/ s3://rahul-devops-demo-12345 --recursive

## Notes
- cp = copy (local ↔ cloud)
- s3:// = cloud path
- --recursive = upload all files in folder
