variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-049ed5fa529109ac4" # Ubuntu 20.04 LTS // us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}