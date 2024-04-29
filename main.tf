terraform {
    cloud {
        organization = "finches-tf"
        workspaces {
        name = "finches-learn-terraform-aws"
        }
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "meher"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"

  tags = {
    Name         = var.instance_name
    Client       = "internal"
    Project      = "DOB"
    Owner        = "Meher-Lippmann"
    Appliocaiton = "app_server"
  }
}
