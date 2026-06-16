resource "aws_instance" "bastion" {

  ami = data.aws_ami.ubuntu.id

  instance_type = "t3.micro"

  subnet_id = aws_subnet.public_a.id

  key_name = aws_key_pair.main.key_name

  vpc_security_group_ids = [
    aws_security_group.bastion_sg.id
  ]

  associate_public_ip_address = true

  tags = {
    Name = "bastion"
  }
}

resource "aws_instance" "sonarqube_1" {

  ami = data.aws_ami.ubuntu.id

  instance_type = "t3.medium"

  subnet_id = aws_subnet.private_app_a.id

  key_name = aws_key_pair.main.key_name

  vpc_security_group_ids = [
    aws_security_group.sonarqube_sg.id
  ]

  tags = {
    Name = "sonarqube-1"
  }
}

resource "aws_instance" "sonarqube_2" {

  ami = data.aws_ami.ubuntu.id

  instance_type = "t3.medium"

  subnet_id = aws_subnet.private_app_b.id

  key_name = aws_key_pair.main.key_name

  vpc_security_group_ids = [
    aws_security_group.sonarqube_sg.id
  ]

  tags = {
    Name = "sonarqube-2"
  }
}


