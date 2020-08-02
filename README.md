# crawler

## Installation

To get started, make sure you have [Terraform installed](https://www.terraform.io/) on your system, and then clone this repository.

```sh
git clone https://github.com/enigolgithub/secrets-aws
```

### Set Variables

Make files listed below.

- backup.tf
- terraform.tfvars
- .env
- static/dotfiles/.env

### Initialize Terraform

Run:

```sh
terraform init
```

## Usage

### Build Store

To build SecretsManager, check your workspace with `terraform workspace show` and if ok, run:

```sh
terraform apply
```

### Docker Setup

```sh
docker-compose build
```

### Get Secret Values

```sh
docker-compose up -d
docker-compose exec --user ec2-user ec2 bash --login
```
