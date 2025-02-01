aws_region      = "us-east-1"
role_name       = "s3_full_access"
environment     = "Development"
trusted_service = "s3.amazonaws.com"
policy_role_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
tags = {
  Name        = "s3fullaccess"
  Environment = "Development"
  Team        = "DevOps"
  Terraform   = "true"
}
