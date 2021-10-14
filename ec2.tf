terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_lightsail_key_pair" "pentest-key" {
  name       = "pentest-key"
  public_key = file("~/.ssh/pentest.pub")
}

# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "redbox" {
  name              = "redbox"
  availability_zone = "us-east-1a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "micro_2_0"
  key_pair_name     = "pentest-key"
  tags = {
    foo = "bar"
  }
}