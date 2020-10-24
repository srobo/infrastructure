resource "digitalocean_kubernetes_cluster" "application-cluster" {
  name    = "application-cluster-production"
  region  = var.region
  version = "1.14.4-do.1"

  node_pool {
    name       = "application-cluster-pool-production"
    size       = "s-1vcpu-2gb"
    node_count = 1
    tags       = ["application-cluster-production"]
  }
}
