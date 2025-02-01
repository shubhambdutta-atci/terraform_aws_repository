variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = ""
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = ""
}

variable "trusted_service" {
  description = "AWS service that can assume this role"
  type        = string
  default     = ""
}

variable "policy_role_arn" {
  description = "AWS policy arn assigned for S3 full access"
  type = string
  default = ""
}

variable "tags" {
  description = "Tags to attach to the IAM role"
  type        = map(string)
  default = {
    Name        = "S3FullAccessRole"
    Environment = "Production"
    Terraform   = "true"
  }
}
