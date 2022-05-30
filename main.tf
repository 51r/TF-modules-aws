terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      configuration_aliases = [ aws.i1, aws.i2 ]
    }
  }
}

resource "aws_instance" "instance1" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  provider = aws.i1

  tags = {
    Name  = "Peter-Test-Ubuntu"
    Owner = "petar.spasov@hashicorp.com"
  }
}

resource "aws_instance" "instance2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  provider = aws.i2
  
  tags = {
    Name  = "Peter-Test-Ubuntu"
    Owner = "petar.spasov@hashicorp.com"
  }
}