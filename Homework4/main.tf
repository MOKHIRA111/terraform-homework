provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  count             = var.instance_count
  availability_zone = var.availability_zone

}

