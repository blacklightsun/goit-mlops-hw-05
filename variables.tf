variable "region" {
  type        = string
  description = "AWS region"
}

variable "aws_profile" {
  type        = string
  description = "AWS CLI profile"
}


## VPC Variables
variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

# variable "availability_zones" {
#   type = list(string)
# }

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}
variable "enable_nat_gateway" {
  type = bool
}

variable "single_nat_gateway" {
  type = bool
}

## EKS Variables
variable "eks_cluster_name" {
  type = string
}

variable "eks_cluster_version" {
  type = string
}


variable "node_groups" {
  type = map(object({
    desired_capacity = number
    max_capacity     = number
    min_capacity     = number
    instance_types   = list(string)
  }))
}

# variable "tags" {
#   type = map(string)
# }

# variable "cluster_admin_users" {
#   description = "List of IAM user ARNs to be granted cluster admin access"
#   type        = list(string)
#   default     = []
# }