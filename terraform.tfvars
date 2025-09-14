region             = "eu-north-1"
aws_profile        = "goit-terraform"



vpc_name           = "goit-terraform-vpc"
vpc_cidr_block     = "10.0.0.0/16"
# availability_zones = ["eu-north-1a", "eu-north-1b", "eu-north-1c"]
private_subnets    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
enable_nat_gateway = true
single_nat_gateway = true



eks_cluster_name    = "goit-terraform-eks-cluster"
eks_cluster_version = "1.30"
node_groups = {
  cpu_node_group = {
    desired_capacity = 2
    max_capacity     = 3
    min_capacity     = 1
    instance_types   = ["t3.micro"]
  }

  gpu_node_group = {
    desired_capacity = 0
    max_capacity     = 1
    min_capacity     = 0
    instance_types   = ["t3.micro"]
  }
}
# tags = {
#   Environment = "dev"
#   Terraform   = "true"
# }

# cluster_admin_users = [
#   "arn:aws:iam::282681674595:root"
# ]