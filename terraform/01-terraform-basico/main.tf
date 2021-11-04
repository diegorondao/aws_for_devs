terraform {
    required_version = "1.0.10"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.63.0"
        }
    }
}

provider "aws"{
    region  = "us-east-1"
    profile = "awsdiego"
}

resource "aws_s3_bucket" "my-test-bucket" {
    bucket = "my-bucket-create-by-terraform-diegoaws"
    acl    = "private"

    tags = {
        Name       = "My bucket"
        Environmet = "Dev"
        ManageBy   = "Terraform"
        Owner      = "Diego"
        UpdateAt   = "2021-11-04"
    }
}