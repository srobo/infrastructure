locals {
  env = {
    defaults = {
      deployment_id = terraform.workspace
      region        = "lon1"
    }

    development = {
      domain_name = "studentrobotics.dev"
    }

    production = {
      domain_name = "studentrobotics.org"
    }
  }

  workspace = merge(local.env["defaults"], local.env[terraform.workspace])
}

locals {
  deployment_id = local.workspace["deployment_id"]
  domain_name   = local.workspace["domain_name"]
  region        = local.workspace["region"]
}
