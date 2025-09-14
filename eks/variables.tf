## VPC Variables
variable "vpc_id" {
  description = "ID of the VPC where to create security group"
  type        = string
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
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