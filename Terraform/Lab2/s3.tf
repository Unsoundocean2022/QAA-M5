# AWS S3 Bucket
# ---
# Create an S3 Bucket

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"
}
