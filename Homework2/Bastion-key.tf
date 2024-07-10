provider "aws" {
  region = "us-east-2"
}
 resource "aws_key_pair" "student" {
      key_name = "Bastion-key"
 public_key = file("~/.ssh/id_rsa.pub")
 }

