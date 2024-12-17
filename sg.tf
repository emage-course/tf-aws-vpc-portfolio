resource "aws_security_group" "allow_all" {
  name   = "example_allow_all"
  vpc_id = aws_vpc.main.id


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    description = "worldwide"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    description = "worldwide"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Environment = "dev"
    Name        = "SG_public_80_22,8080,443"
  }
}
