resource "aws_s3_bucket" "demos3" {
    bucket = "terraform-bakcend-state" 
    acl = "private"   
}
