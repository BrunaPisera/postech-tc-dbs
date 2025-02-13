resource "aws_db_instance" "tc_pedidos_db" {
  identifier             = "tc-pedidos-db"
  engine                 = "postgres"
  engine_version         = "16.3"
  instance_class         = "db.t3.micro"
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.id
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  multi_az               = false
  publicly_accessible    = false
  username               = "postgres"
  password               = "banana123"
  db_name                = "pedidos_db"
  parameter_group_name   = "default.postgres16"
  skip_final_snapshot    = true # Definir como false em produção para fazer backup ao excluir
  tags = {
    Name = "PedidosDB"
  }
}

resource "aws_db_instance" "tc_acompanhamento_db" {
  identifier             = "tc-acompanhamento-db"
  engine                 = "postgres"
  engine_version         = "16.3"
  instance_class         = "db.t3.micro"
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.id
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  multi_az               = false
  publicly_accessible    = false
  username               = "postgres"
  password               = "banana123"
  db_name                = "acompanhamento_db"
  parameter_group_name   = "default.postgres16"
  skip_final_snapshot    = true # Definir como false em produção para fazer backup ao excluir
  tags = {
    Name = "AcompanhamentoDB"
  }
}