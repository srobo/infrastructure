resource "digitalocean_certificate" "public-certificate" {
  name = "public-certificate"
  type = "lets_encrypt"
  domains = ["${digitalocean_domain.domain-name.name}"]
}

resource "digitalocean_loadbalancer" "public-load-balancer" {
  name = "load-balancer-${var.deployment_id}"
  region = "${var.region}"
  droplet_tag = "application-cluster"

  redirect_http_to_https = true

  forwarding_rule {
    entry_port = 443
    entry_protocol = "https"

    target_port = 30000
    target_protocol = "http"

    certificate_id = "${digitalocean_certificate.public-certificate.id}"
  }

  healthcheck {
    port = 30000
    protocol = "http"
    path = "/"
  }
}
