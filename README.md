# Terraform module for argo-cd

This module deploys the following helm chart on a kubernetes cluster:

| Name    | Repository                           | Version |
| ------- | ------------------------------------ | ------- |
| argo-cd | https://argoproj.github.io/argo-helm | 4.10.9  |

## Module input parameters

| Parameter                   | Type     | Description                                                                                     |
| --------------------------- | -------- | ----------------------------------------------------------------------------------------------- |
| namespace                   | Required | The kubernetes namespace at which the argo-cd chart will be deployed                            |
| domain                      | Required | The external DNS domain of the kubernetes cluster                                               |
| certificate_issuer          | Required | The name of the certificate issuer that will be used to issue the certificate of the argo-cd UI |
| argo_cd_controller_replicas | Optional | The number of replicas for argo-cd controller to be deployed. Default value is 1                |
| node_selector               | Optional | A map variable with nodeSelector labels applied when placing pods of the chart on the cluster   |