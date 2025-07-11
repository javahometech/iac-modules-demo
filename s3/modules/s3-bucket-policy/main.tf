# Bucket policy to allow public read access to all objects
resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket = var.s3_bucket_id

  policy = var.s3_bucket_policy
}
