data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  provider    = aws.i1

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-amd64-server-*"]
  }
}

data "aws_ami" "ubuntu2" {
  most_recent = true
  owners      = ["099720109477"]
  provider    = aws.i2

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-amd64-server-*"]
  }
}