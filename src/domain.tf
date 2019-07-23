resource "digitalocean_domain" "domain-name" {
  name = "${var.domain_name}"
}

resource "digitalocean_record" "google_1" {
  domain = "${digitalocean_domain.domain-name.name}"
  type   = "MX"
  name   = "@"
  value  = "aspmx.l.google.com."
  priority = 0
}

resource "digitalocean_record" "google_2" {
  domain = "${digitalocean_domain.domain-name.name}"
  type   = "MX"
  name   = "@"
  value  = "alt1.aspmx.l.google.com."
  priority = 10
}

resource "digitalocean_record" "google_3" {
  domain = "${digitalocean_domain.domain-name.name}"
  type   = "MX"
  name   = "@"
  value  = "alt2.aspmx.l.google.com."
  priority = 20
}

resource "digitalocean_record" "google_4" {
  domain = "${digitalocean_domain.domain-name.name}"
  type   = "MX"
  name   = "@"
  value  = "aspmx2.googlemail.com."
  priority = 30
}

resource "digitalocean_record" "google_5" {
  domain = "${digitalocean_domain.domain-name.name}"
  type   = "MX"
  name   = "@"
  value  = "aspmx3.googlemail.com."
  priority = 40
}

resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.domain-name.name}"
  type = "CNAME"
  name = "www"
  value = "studentrobotics.org."
}

resource "digitalocean_record" "patience" {
  domain = "${digitalocean_domain.domain-name.name}"
  type = "A"
  name = "patience"
  value = "159.65.84.52"
}

resource "digitalocean_record" "patience-ipv6" {
  domain = "${digitalocean_domain.domain-name.name}"
  type = "AAAA"
  name = "patience"
  value = "2a03:b0c0:1:e0::2a5:9001"
}

resource "digitalocean_record" "saffron" {
  domain = "${digitalocean_domain.domain-name.name}"
  type = "A"
  name = "saffron"
  value = "178.79.191.169"
}

resource "digitalocean_record" "srcomp" {
  domain = "${digitalocean_domain.domain-name.name}"
  type = "A"
  name = "srcomp"
  value = "46.101.10.75"
}

resource "digitalocean_record" "srcomp-ipv6" {
  domain = "${digitalocean_domain.domain-name.name}"
  type = "AAAA"
  name = "srcomp"
  value = "2a03:b0c0:1:d0::aea:6001"
}

resource "digitalocean_record" "mail" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "mail"
  type = "CNAME"
  value = "ghs.google.com."
}

resource "digitalocean_record" "calendar" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "calendar"
  type = "CNAME"
  value = "ghs.google.com."
}

resource "digitalocean_record" "start" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "start"
  type = "CNAME"
  value = "ghs.google.com."
}

resource "digitalocean_record" "gerrit" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "gerrit"
  type = "CNAME"
  value = "saffron.studentrobotics.org."
}

resource "digitalocean_record" "git" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "git"
  type = "CNAME"
  value = "saffron.studentrobotics.org."
}

resource "digitalocean_record" "svn" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "svn"
  type = "CNAME"
  value = "saffron.studentrobotics.org."
}

resource "digitalocean_record" "trac" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "trac"
  type = "CNAME"
  value = "saffron.studentrobotics.org."
}

resource "digitalocean_record" "ide" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "ide"
  type = "CNAME"
  value = "studentrobotics.org."
}

resource "digitalocean_record" "ops-manual" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "opsmanual"
  type = "CNAME"
  value = "hosting.gitbook.com."
}

resource "digitalocean_record" "spf" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "@"
  type = "TXT"
  value = "v=spf1 include:_spf.google.com ~all"
}

resource "digitalocean_record" "dkim" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "google._domainkey"
  type = "TXT"
  value = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCuOyyhoq+od+oiWNXV3po15wdDG9NaWa2oDvDW2tjA5A6yKMd57PT8TBZModroUSWllBYj9v1SPONR/W3TiCBlKT3CmgifGAVoFohkVQAspegbVVt3xpgNaNZfrEtPCKzUm/opSJAzUPETzpfbWfgo3jHGWKOV9dtzE2dwFQL5MwIDAQAB"
}

resource "digitalocean_record" "google-site-verification" {
  domain = "${digitalocean_domain.domain-name.name}"
  name = "google-site-verification"
  type = "TXT"
  value = "9C-IE01HD-UTpvXzlXD1K6hjFnAznMTIjUWk_3P9tL4"
}
