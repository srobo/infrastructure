# Infrastructure

This is to provision the base cluster and domain for Student Robotics' Digital
Ocean setup.

## Getting Started

* [ruby][ruby] and [bundler][bundler]

### Provisioning

1. Create your team and project on DigitalOcean.

2. [Create an API key][dotoken]

3. Export the token on your command line
   
   ```bash
   $ export DIGITALOCEAN_TOKEN=<your token>
   ```

4. Install the Gems

   ```bash
   $ bundle install
   ```

5. Provision the environment you want (currently development/production)

    ```bash
    $ rake main:provision[development]
    ```

### Interacting with Kubernetes

1. Install [doctl][doctl] - to manage your DigitalOcean infrastructure
2. Install [kubectl][kubectl] - to interact with the kubernetes cluster

3. Switch to your newly created cluster for kubectl
   
   ```bash
   $ doctl k8s cluster kubeconfig save application-cluster-development
   ```

[ruby]: https://www.ruby-lang.org/en/documentation/installation/
[bundler]: https://bundler.io/#getting-started
[doctl]: https://github.com/digitalocean/doctl#installing-doctl
[kubectl]: https://kubernetes.io/docs/tasks/tools/install-kubectl/
[dotoken]: https://cloud.digitalocean.com/account/api/tokens
