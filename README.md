# Terraform AWS Module example to create 2 different Ubuntu instances.
This is a terraform module to demonstrate the passing provider configurations to child modules.

The module will create 2 Ubuntu instances in two different regions. The region configurations are defined in the root module.

# Prerequisite
This guide applies to Mac, for other OS it may vary. You need to have terraform CLI installed on you workstation. In the guide below, we will be using [homebrew](https://brew.sh/)

*  First, add the HashiCorp tap, a repository of all Hashicorp brew packages. 
    ```
    brew tap hashicorp/tap
    ```
* Now, install Terraform with hashicorp/tap/terraform.
   ```
   brew install hashicorp/tap/terraform
   ```
*  for any other OS click [here](https://learn.hashicorp.com/tutorials/terraform/install-cli)

**NOTE: This installs a signed binary and is automatically updated with every new official release.**

* Check if Terraform is available with: 
```
terraform --version
```


# How to use the repo

* You can check the directory "Example" in the repo, to see example configuration for the module.

If you wish to add the following module to your configuration, keep in mind that you will have to specify your regions by adding 2 vars
i1 and i2. You can use the following example code for your variables.tf, during plan execution you will be asked to specify your regions.

```
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
```
