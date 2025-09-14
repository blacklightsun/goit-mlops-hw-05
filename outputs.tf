output "vpc_id" {
  value = module.vpc.vpc_id
}

output "eks_cluster_id" {
  value = module.eks.eks_cluster_id
}

output "eks_cluster_endpoint" {
  description = "API endpoint EKS-кластеру"
  value       = module.eks.eks_cluster_endpoint
}

output "eks_cluster_version" {
  description = "Версія Kubernetes"
  value       = module.eks.eks_cluster_version
}

output "eks_cluster_sg_id" {
  value = module.eks.eks_cluster_sg_id
}

output "cluster_arn" {
  value       = module.eks.cluster_arn
  description = "The Amazon Resource Name (ARN) of the cluster"
}

output "eks_cluster_name" {
  description = "Назва EKS-кластеру"
  value       = module.eks.eks_cluster_name
}

output "kubectl_config_command" {
  description = "Команда для оновлення kubeconfig"
  value       = "aws eks update-kubeconfig --region ${var.region} --name ${module.eks.eks_cluster_name}"
}

output "verify_nodes_command" {
  description = "Команда для перевірки системних pod-ів"
  value       = "kubectl get nodes"
}

output "verify_pods_command" {
  description = "Команда для перевірки системних pod-ів"
  value       = "kubectl get pods -n kube-system"
}