variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-a3ed72cs"
  }
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "EC2 instance type"
}

variable "public_key" {
  type        = string
  default     = "id_rsa.pub"
  description = "SSH public key"
}

variable "security_group" {
  type        = string
  default     = "id_rsa.pub"
  description = "security group ID"
}