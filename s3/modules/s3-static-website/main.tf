resource "aws_s3_bucket_website_configuration" "main" {
  bucket = var.s3_bucket_id
  index_document {
    suffix = var.index_file
  }

  error_document {
    key = var.error_file
  }
}