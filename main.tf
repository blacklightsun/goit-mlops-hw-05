#####################################
# VPC для EKS (мінімальна конфігурація)
#####################################

module "vpc" {
  source  = "./vpc"

  vpc_name = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block

#   azs             = slice(data.aws_availability_zones.available.names, 0, 3)
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

}

# data "aws_availability_zones" "available" {}

#####################################
# EKS кластер
#####################################

module "eks" {
  source          = "./eks"

  eks_cluster_name = var.eks_cluster_name
  eks_cluster_version = var.eks_cluster_version

  vpc_id                         = module.vpc.vpc_id
  private_subnets                = module.vpc.private_subnets

#   enable_cluster_creator_admin_permissions = true

#   endpoint_public_access       = true
#   endpoint_private_access      = true
#   endpoint_public_access_cidrs = ["0.0.0.0/0"]

  node_groups = var.node_groups

# depends_on = [module.vpc]
}