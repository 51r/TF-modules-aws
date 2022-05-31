# Terraform AWS Module creating 2 Ubuntu instances in different AWS regions.
This is a terraform module to demonstrate the passing provider configurations to child modules.

The module will create 2 Ubuntu instances in two different regions. The region configurations are defined in the root module.

# Prerequisite
* Install [Terraform](https://www.terraform.io/downloads.html) `>=0.13`


# How to use the module

* You can check the directory "example" in the repo, to download the example configuration for the module.

1. Clone the repo to your local directory:
```
git clone https://github.com/51r/TF-modules-aws.git
```

2. Make sure you are in the root of the repo:
```
cd TF-modules-aws
```

3. Then you can go to the example directory:
```
cd example
```

4. Initialize the Terraform:
```
terraform init
```

5. Check the Terraform plan:
```
terraform plan
```

6. Execute the plan:
```
terraform apply
```

7. Confirm that the two instances are created and are in the two different provided regions.
