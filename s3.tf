resource "aws_s3_bucket" "s3_backend" {
    bucket = var.backend_bucket_name
}
 resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.s3_backend.id
  acl    = "private"
}
