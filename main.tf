resource "helm_release" "argo-cd" {
  chart            = "argo-cd"
  name             = "argo-cd"
  namespace        = var.namespace
  create_namespace = true
  repository       = "https://argoproj.github.io/argo-helm"
  version          = "4.10.9"
  wait             = true

  values = [
    templatefile("${path.module}/templates/argo-cd.yaml", {
      node_selector               = var.node_selector
      certificate_issuer          = var.certificate_issuer
      domain                      = var.domain
      argo_cd_controller_replicas = var.argo_cd_controller_replicas
    })
  ]
}