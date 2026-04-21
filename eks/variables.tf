variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nom du cluster EKS"
  default     = "eks-mouhamedfall11"
}

variable "availability_zones" {
  description = "Zones de disponibilite"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}