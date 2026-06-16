resource "aws_key_pair" "main" {

  key_name = "sonarqube-key"

  public_key = file("id_rsa.pub")
}
