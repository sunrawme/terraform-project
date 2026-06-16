output "public_ips" {
  value = aws_instance.sonarqube[*].public_ip
}
