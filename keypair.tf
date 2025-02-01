
resource "aws_key_pair" "portfolio-key" {
  key_name   = "portfolio-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
