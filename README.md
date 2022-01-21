# infra

This repository holds the code for our infrastructure and GitHub repositories.

## Setup

1. Rename file `env.tfvars.example` to `env.tfvars` and replace its values with correct ones.
To get them, please reach one of the repository owners.

1. Initialize Terraform
    ```sh
    terraform init
    ```

## Terraform

### Plan

```sh
make plan
```

### Apply

```sh
make apply
```
