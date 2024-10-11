terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.70.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myserver" {
  ami = "ami-0845068028e672a07"
  instance_type = "t2.micro"

  tags = {
    Name = "SampleServer"
  }
}

output "aws_instance_public_ip" {
  value = aws_instance.myserver.public_ip
}