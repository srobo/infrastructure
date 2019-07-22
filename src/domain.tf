resource "digitalocean_domain" "domain-name" {
  name = "${var.domain_name}"
}
