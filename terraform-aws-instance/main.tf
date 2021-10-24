terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  # the AWS credentials stored in your AWS configuration file
  profile = "nirv-dev"
  region  = "us-west-2"
}

# ID aws_instance.app_server
resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
  # specify these if you dont have a default VPC in the region specified in provider block
  # vpc_security_group_ids = ["sg-0077..."]
  # subnet_id              = "subnet-923a..."
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
