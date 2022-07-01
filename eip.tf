resource "aws_eip" "pub_eip" {
  vpc = true
}

resource "aws_eip" "priv1_eip" {
  vpc = true
}

resource "aws_eip" "priv2_eip" {
  vpc = true
}