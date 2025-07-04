# Bucket policy to allow public read access to all objects
resource "aws_s3_bucket_policy" "public_read_policy" {
  bucket = var.s3_bucket_id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${var.s3_bucket_arn}/*"
      }
    ]
  })
}