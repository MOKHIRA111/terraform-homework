variable "region" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "instance_count" {
  type = number
}



variable "port" {
  type = list(any)
}

variable "key_name" {
  type        = string
}

variable availability_zone {
  type = string 
  
}