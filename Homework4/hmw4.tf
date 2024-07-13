provider "aws" {
    region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type 
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
}

variable "key_name" {
  description = "Name of the key pair"
  type        = string
  default     = ""
}


variable "ami_id" {
  description = "provide ami id"
  type        = string
  default     = ""
}


variable "instance_type" {
  description = "provide instance type"
  type        = string
  default     = ""
}

variable "region" {
  description = "provide region"
  type        = string
  default     = "" 
}