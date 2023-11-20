# Instance type
variable "instance_type" {
  default = {
    "Prod"    = "t3.medium"
    "Staging" = "t3.small"
    "Dev"     = "t3.micro"
  }
  description = "Type of the instance"
  type        = map(string)
}

# Default tags
variable "default_tags" {
  default = {
    "Owner" = "Group24"
    "App"   = "Web"
  }
}

# Prefix to identify resources
variable "prefix" {
  type    = string
  default = "Group24"
}


# Variable to signal the current environment 
variable "env" {
  default     = "Dev"
  type        = string
  description = "Deployment Environment"
}

variable "ec2_count" {
  type    = number
  default = "0"
}

# Cloud9 Public IP
variable "my_public_ip" {
  type        = string
  description = "Public IP of my Cloud9"
  default     = "35.175.132.177"
}

# Cloud9 Private IP
variable "my_private_ip" {
  type        = string
  description = "Private IP of my Cloud9"
  default     = "172.31.57.39"
}

variable "desired_size" {
  type        = number
  description = "Desired size for ASG"
  default     = 2
}

# variable "bastion_cidrs" {
#   type        = string
#   default     = "10.200.2.0/24"
#   description = "Public IP of my Cloud 9 station to be opened in bastion ingress"
# }

variable "bastion_cidrs" {
  type        = string
  default     = "10.200.2.0/24"
  description = "Public IP of my Cloud 9 station to be opened in bastion ingress"
}