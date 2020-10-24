resource "digitalocean_kubernetes_cluster" "application-cluster" {
  name    = "application-cluster-${local.deployment_id}"
  region  = local.region
  version = "1.14.4-do.1"

  node_pool {
    name       = "application-cluster-pool-${local.deployment_id}"
    size       = "s-1vcpu-2gb"
    node_count = 1
    tags       = ["application-cluster-${local.deployment_id}"]
  }
}
