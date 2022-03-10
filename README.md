# infra

This repository holds the code for our infrastructure and GitHub repositories.

## Repository structure

Each infrastructure block is defined in a directory with Terraform modules.

Inside you will find:

- the entry point inside `main.tf`
- the expected variables to configure the infrastructure inside `variables.tf`
- an example of the actual variables definition inside `terraform.tfvars.example`

## Usage

### Set up your local environment

Move to the directory of the desired block:

```sh
cd block
```

Rename copy `terraform.tfvars.example` to `terraform.tfvars` and replace its values with the correct ones.

```sh
cp terraform.tfvars.example terraform.tfvars
```

By using your own environment, you can deploy an exact copy of the solution as your own. To work with Benchttp original solution, reach one of the repository owners.

### Deploy the infrastructure

Note: the following instructions expect your current direcorty is the directory matching the desired block.

Initialize Terraform if not done already:

```sh
terraform init
```

Plan the infrastructure without actually making any real world changes (i.e. a dry run):

```sh
terraform plan
```

Apply the infrastructure and introduce changes to the currently deployed system:

```sh
terraform apply
```

Refer to the [Terraform docs](https://www.terraform.io/docs) for further documentation.
