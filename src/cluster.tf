resource "digitalocean_kubernetes_cluster" "application-cluster" {
  name = "application-cluster-${var.deployment_id}"
  region = "${var.region}"
  version = "1.14.4-do.0"

  node_pool {
    name = "application-cluster-worker-pool-${var.deployment_id}"
    size = "s-1vcpu-2gb"
    node_count = 1
    tags = ["application-cluster"]
  }
}
