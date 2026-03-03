module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.4.0"
  identifier = "flowforge-${var.environment}"
  engine = "postgres"
  engine_version = "16.1"
  instance_class = var.environment == "production" ? "db.r6g.xlarge" : "db.t3.medium"
  allocated_storage = 100
  db_name  = "flowforge"
  username = "flowforge"
  vpc_security_group_ids = [aws_security_group.rds.id]
  subnet_ids = module.vpc.private_subnets
}
