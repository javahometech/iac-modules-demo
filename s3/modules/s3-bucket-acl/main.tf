resource "aws_s3_bucket_acl" "main" {
  bucket = var.bucket_name
  acl    = "public-read"
}
