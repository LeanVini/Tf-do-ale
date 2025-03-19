resource "aws_db_instance" "postgres" {
  identifier           = "meu-banco-postgres"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine              = "postgres"
  engine_version      = "14.4"
  instance_class      = "db.t3.micro"
  username           = "admin"
  password           = "minha_senha_secreta"
  parameter_group_name = "default.postgres14"
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  publicly_accessible = false
  skip_final_snapshot = true
}