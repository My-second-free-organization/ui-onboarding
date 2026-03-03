terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = { source = "hashicorp/aws"; version = "~> 5.0" }
  }
  backend "s3" { bucket = "flowforge-terraform-state"; key = "infra/terraform.tfstate"; region = "eu-west-1" }
}

provider "aws" { region = var.aws_region }
