variable "aws_region" { default = "eu-west-1" }
variable "environment" { type = string }
variable "vpc_cidr" { default = "10.0.0.0/16" }
variable "cluster_name" { default = "flowforge-eks" }
