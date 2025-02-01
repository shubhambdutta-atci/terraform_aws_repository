# S3 bucket for lab-1
resource "aws_s3_bucket" "lab-1" {
  for_each = toset(var.bucket_name)
  bucket = each.value
   tags = merge (
    var.common_tag,
    {
      Name = each.value
    }
   )
}

# tags = {
  #   Name        = "bucket-demo-lct-lab112192024"
  #   Environment = "Test"
  # }
