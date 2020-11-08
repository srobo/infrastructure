# Infrastructure

This is to provision the base cluster and domain for Student Robotics' Digital
Ocean setup.

## Contents

* A kubernetes cluster, with a node pool of one instance
* A load balancer, which balances HTTPS requests to port 30000 on each node in
  the pool. Right now it terminates SSL, so it's expected the pool is private.
* A DigitalOcean _domain_, which forwards the domain name to the load balancer.
  You'll need to delegate to DigitalOcean from your DNS provider.
* A Lets Encrypt certificate for the domain

## Getting Started

* Terraform `>=0.13.0

### Provisioning

1. Create your team and project on DigitalOcean.

2. [Create an API key][dotoken]

3. Export the token on your command line

   ```bash
   $ export DIGITALOCEAN_TOKEN=<your token>
   ```

4. `cd` into the `src` directory

5. Initialise terraform locally

   ```bash
   $ terraform init
   ```

6. Plan your provision

   ```bash
   $ terraform plan
   ```

7. Apply your provision

   ```bash
   $ terraform apply
   ```

### Interacting with Kubernetes

1. Install [doctl][doctl] - to manage your DigitalOcean infrastructure
2. Install [kubectl][kubectl] - to interact with the kubernetes cluster

3. Switch to your newly created cluster for kubectl

   ```bash
   $ doctl k8s cluster kubeconfig save application-cluster-development
   ```

### Network Security

The kubernetes provisioning brings up a firewall for the nodes, exposing every
port above 30000 to the outside world. For StudentRobotics this isn't ideal, so
it's been adjusted manually in the DigitalOcean account so only the load
balancer can speak to the nodes directly.

## Managing tfstate

Running Terraform generates state files, which represent what Terraform is
responsible for, and stops it modifying or deleting things it doesn't know
about. When you provision the environment, it will generate some state files,
and place them in the `terraform.tfstate.d` directory.

For StudentRobotics, this state currently lives in DigitalOcean Spaces. Meaning
when you want to provision the environment, you need to download the latest
version from there and upload it when you're done.

Not ideal, and can definitely be improved.

[doctl]: https://github.com/digitalocean/doctl#installing-doctl
[kubectl]: https://kubernetes.io/docs/tasks/tools/install-kubectl/
[dotoken]: https://cloud.digitalocean.com/account/api/tokens
