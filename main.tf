
resource "aws_instance" "ec2" {
  subnet_id     = aws_subnet.private.id
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.devkey.key_name
  user_data     = file("files/install-portfolio.sh")
  security_groups = [
    aws_security_group.allow_all.name
  ]
}
