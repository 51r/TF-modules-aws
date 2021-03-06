# The provider alias for the first instance
provider "aws" {
  alias  = "r1"
  region = var.region1
}

# The provider alias for the second instance
provider "aws" {
  alias  = "r2"
  region = var.region2
}

module "instance" {
  source = "github.com/51r/TF-modules-aws"
  providers = {
    aws.i1 = aws.r1
    aws.i2 = aws.r2
  }
}
