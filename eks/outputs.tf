output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "API endpoint EKS-кластеру"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_version" {
  description = "Версія Kubernetes"
  value       = module.eks.cluster_version
}

output "eks_cluster_sg_id" {
  value = module.eks.cluster_security_group_id
}

output "cluster_arn" {
  value       = module.eks.cluster_arn
  description = "The Amazon Resource Name (ARN) of the cluster"
}

output "eks_cluster_name" {
  description = "Назва EKS-кластеру"
  value       = module.eks.cluster_name
}
