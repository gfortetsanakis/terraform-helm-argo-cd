variable "namespace" {
  description = "The kubernetes namespace at which the argo-cd chart will be deployed."
}

variable "domain" {
  description = "The domain of the kubernetes cluster."
}

variable "certificate_issuer" {
  description = "The name of the certificate issuer that will be used to issue certificate for argo-cd UI."
}

variable "argo_cd_controller_replicas" {
  description = "The number of replicas for argo-cd controller to be deployed."
  default     = 1
}

variable "node_selector" {
  description = "A map variable with nodeSelector labels applied when placing pods of the chart on the cluster."
  default     = {}
}