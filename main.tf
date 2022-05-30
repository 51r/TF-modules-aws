terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
    tags = {
    Name  = "Peter-Test-Ubuntu"
    Owner = "petar.spasov@hashicorp.com"
  }
}