terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  alias  = "ew2"
  region = "eu-west-2"
}

provider "aws" {
  alias  = "ec1"
  region = "eu-central-1"
}

resource "aws_instance" "ubuntu" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  provider      = aws.ew2
  tags = {
    Name  = "Peter-Test-Ubuntu"
    Owner = "petar.spasov@hashicorp.com"
  }
}

resource "aws_instance" "ubuntu2" {
  ami           = data.aws_ami.ubuntu2.id
  instance_type = "t2.micro"
  provider      = aws.ec1
  tags = {
    Name  = "Peter-Test-Ubuntu"
    Owner = "petar.spasov@hashicorp.com"
  }
}