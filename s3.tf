resource "aws_s3_bucket" "s3_backend" {
    bucket = "terraform-bakcend-state" 
    acl = "private"   
}
