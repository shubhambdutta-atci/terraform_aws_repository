output "role_name" {
  description = "Name of the created IAM role"
  value       = aws_iam_role.s3_full_access_role.name
}

output "role_arn_policy" {
  description = "ARN of the created IAM role"
  value       = aws_iam_role.s3_full_access_role.arn
}
