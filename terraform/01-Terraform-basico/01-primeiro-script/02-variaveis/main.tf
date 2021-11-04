terraform {
  required_version = "1.0.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "web" {
  ami           = var.instace_ami
  instance_type = var.instace_type

  tags = var.instace_tags
}