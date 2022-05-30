# The provider alias for the first instance
provider "aws" {
  alias  = "ew2"
  region = "eu-west-2"
}
# The provicer alias for the second instance
provider "aws" {
  alias  = "ec1"
  region = "eu-central-1"
}

module "instance1" {
  source = "https://github.com/51r/TF-modules-aws"
  providers = {
    aws = aws.ew2
  }
}

module "instance2" {
  source = "https://github.com/51r/TF-modules-aws"
  providers = {
    aws = aws.ec1
  }
}