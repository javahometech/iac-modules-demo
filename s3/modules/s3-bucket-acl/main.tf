resource "aws_s3_bucket_acl" "main" {
  bucket = "jhc-iac-modules-1233456"
  acl    = "public-read"
}