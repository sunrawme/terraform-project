
resource "aws_subnet" "private_db_b" {

  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.22.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "private-db-b"
  }
}
