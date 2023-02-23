variable "vpc_name" {
  description = "The VPC Subnet IDs to launch in"
  type        = string
  default     = "nonprod"	
}
variable "backend_bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "terraform-bakcend-state"
}
