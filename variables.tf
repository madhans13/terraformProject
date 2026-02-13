variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default="terraform-key"
  description = "Existing AWS key pair name"
}

variable "ami_id" {
  default = "ami-0bc57fba09bf88fed"
}
