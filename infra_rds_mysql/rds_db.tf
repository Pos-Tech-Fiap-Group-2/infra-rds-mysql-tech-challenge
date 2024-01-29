resource "aws_db_subnet_group" "mysql_aurora_group" {
  name       = "tech-challenge-db-subnet-group"
  subnet_ids = tolist(data.aws_subnets.tech-challenge-subnet.ids)

  tags = merge(local.common_tags, {
    Name = "tech-challenge-subnet-group"
  })

}

resource "aws_rds_cluster" "tech_challenge_db" {
  cluster_identifier     = var.identifier
  engine                 = var.engine
  engine_version         = var.engine_version
  availability_zones     = tolist(var.availability_zones)
  database_name          = var.name
  master_username        = var.username
  master_password        = var.password
  skip_final_snapshot    = var.skip_final_snapshot
  vpc_security_group_ids = [data.aws_security_group.tech-challenge-alb-sg.id]
  db_subnet_group_name   = aws_db_subnet_group.mysql_aurora_group.name
  port                   = var.port

  tags = merge(local.common_tags, {
    Name = "tech-challenge-db"
  })

}

resource "aws_rds_cluster_instance" "tech_challenge_db_instance" {
  identifier           = "tech-challenge-db-instance"
  cluster_identifier   = aws_rds_cluster.tech_challenge_db.id
  instance_class       = var.instance_class
  engine               = aws_rds_cluster.tech_challenge_db.engine
  engine_version       = aws_rds_cluster.tech_challenge_db.engine_version
  publicly_accessible  = true
  db_subnet_group_name = aws_db_subnet_group.mysql_aurora_group.name

  tags = merge(local.common_tags, {
    Name = "tech-challenge-db-instance"
  })

}
