# Create IAM role
resource "aws_iam_role" "s3_full_access_role" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = var.trusted_service
        }
      }
    ]
  })

  tags = var.tags
}

# Attach S3 full access policy to the role
resource "aws_iam_role_policy_attachment" "s3_full_access" {
  role       = aws_iam_role.s3_full_access_role.name
  policy_arn = var.policy_role_arn
}
