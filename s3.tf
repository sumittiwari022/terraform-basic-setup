resource "aws_s3_bucket" "s3_backend" {
    bucket = "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}-backend"
}
 resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.s3_backend.id
  acl    = "private"
}
