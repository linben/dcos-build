provider "aws" {
  region = "us-west-2"
}

resource "aws_security_group" "build-sg" {
  name = "build-sg"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "build" {
  ami = "ami-1bceb663"
  instance_type = "m4.xlarge"
  key_name = "default"
  count = "1"
  root_block_device {
    volume_size = 30
  }
  security_groups = [
    "build-sg"
    ]
  tags {
    Name = "dcos-build"
    owner = "ben.lin"
    expiration = "8h"
  }
}

