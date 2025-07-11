resource "aws_s3_bucket" "main" {
  bucket = var.bucket_name
  tags = var.tags
}

resource "aws_s3_bucket_policy" "main" {
  bucket = aws_s3_bucket.this.id
  policy = var.policy_json
}
