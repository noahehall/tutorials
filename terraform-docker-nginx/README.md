# TLDR

copypasta from [terraform getting started tutoral](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/docker-get-started#quick-start-tutorial)

## cmds

- ensure docker + terraform is installed

```sh
  # tested on ubuntu

  terraform init
  terraform plan -out=main.plan
  terraform apply "main.plan"
  # open browser to localhost:8000
  # docker ps
  # docker stop tutorial


```
