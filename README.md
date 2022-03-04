# infra

This repository holds the code for our infrastructure and GitHub repositories.

## Repository structure

Each infrastructure block is defined in a directory with Terraform modules.

Inside you will find:

- the entry point inside `main.tf`
- the expected variables to configure the infrastructure inside `variables.tf`
- a mock of the actual variables definition inside `env.tfvars.example`, not versioned for obvious reasons

## Usage

### Set up your local environment

Move to the directory of the desired block:

```sh
cd block
```

Rename copy `env.tfvars.example` to `terraform.tfvars` and replace its values with the correct ones.

```sh
cp env.tfvars.example terraform.tfvars
```

By using your own environment, you can deploy an exact copy of the solution as your own. To work with Benchttp original solution, reach one of the repository owners.

### Deploy the infrastructure

Initialize Terraform if not done already:

```sh
terraform init
```

Plan the infrastructure without actually making any real world changes (i.e. a dry run):

```sh
make plan
```

Apply the infrastructure and introduce changes to the currently deployed system:

```sh
make apply
```

Refer to the [Terratform docs](https://www.terraform.io/docs) for further documentation.
