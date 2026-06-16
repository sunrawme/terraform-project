resource "aws_subnet" "public_a" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.1.0/24"

  availability_zone = "ap-south-1a"

  map_public_ip_on_launch = true

  tags = {
    Name = "public-a"
  }
}

resource "aws_subnet" "public_b" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.2.0/24"

  availability_zone = "ap-south-1b"

  map_public_ip_on_launch = true

  tags = {
    Name = "public-b"
  }
}

resource "aws_subnet" "private_app_a" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.11.0/24"

  availability_zone = "ap-south-1a"

  tags = {
    Name = "private-app-a"
  }
}


resource "aws_subnet" "private_app_b" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.12.0/24"

  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-app-b"
  }
}


resource "aws_subnet" "private_db_a" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.21.0/24"

  availability_zone = "ap-south-1a"

  tags = {
    Name = "private-db-a"
  }
}

resource "aws_subnet" "private_db_b" {

  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.22.0/24"

  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-db-b"
  }
}

