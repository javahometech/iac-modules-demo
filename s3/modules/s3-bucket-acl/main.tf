resource "aws_s3_bucket_public_access_block" "block_all" {
  bucket = var.bucket_name
  block_public_acls       = false
  ignore_public_acls      = false
  block_public_policy     = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "main" {
  bucket = aws_s3_bucket.main.id
  policy = var.policy_json
  depends_on = [aws_s3_bucket_public_access_block.block_all]
}

