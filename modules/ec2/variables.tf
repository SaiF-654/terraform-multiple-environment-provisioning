#Create Multiple instances with their username and count
variable "instance_count" {
  type  = number
  description = "Number of EC2 instances"
}
variable "ec2_username" {
  type = string
}
variable "key_name" {
  type = string
}

variable "ec2_sg" {
  type = string
  description = "Security group name"
}
variable "ssh_port" {
  type = number
}

variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "tags" {
    type = map(string)
    default = {
      "Name" = "Terraform-EC2"
      "Environment" = "dev"
    }
}
variable "volume_size" {
  type = number
  default = 10
}
variable "volume_type" {
  type = string
  default = "gp3"
}

variable "environment" {
  type = string
  default = "dev"
}
