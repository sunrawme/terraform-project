output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "sonarqube_private_ips" {
  value = [
    aws_instance.sonarqube_1.private_ip,
    aws_instance.sonarqube_2.private_ip
  ]
}
output "rds_endpoint" {
  value = aws_db_instance.postgres.endpoint
}
