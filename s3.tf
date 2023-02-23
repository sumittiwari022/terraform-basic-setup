resource "aws_s3_bucket" "s3_backend" {
    bucket = var.backend_bucket_name
    acl = "private"   
}
