variable "public_subnet_id" {
  description = "Public subnet ID"
  type        = string
}

variable "sg_id" {
  description = "Security group ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "linux_ami" {
  description = "Linux AMI ID"
  type        = string
}
