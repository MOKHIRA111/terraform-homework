resource "aws_s3_bucket" "example" {
  bucket = "kaizen-mokhira"
  force_destroy = true 
}

resource "aws_s3_bucket" "example2" {
  bucket_prefix = "kaizen-mokhira-"
  force_destroy = true 
}

 resource "aws_s3_bucket" "example3" {
   bucket = "manual.1"
   force_destroy = true 
 }

 resource "aws_s3_bucket" "example4" {
   bucket = "manual.2"
   force_destroy = true 
 }
 #terraform import aws_s3_bucket.example4 manual.2