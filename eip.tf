resource "aws_eip" "pub_eip" {
  vpc = true
}

resource "aws_eip" "nat_eip" {
  vpc = true
}