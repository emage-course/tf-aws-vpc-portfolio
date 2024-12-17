output "vpc-name" {
  value = aws_vpc.main.id
}

output "ssh_connection" {
  value = "ssh ec2-user@${aws_instance.ec2.public_ip}"
}

output "web_connection" {
  value = "http://${aws_instance.ec2.public_ip}"
}