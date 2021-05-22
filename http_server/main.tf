provider "aws" {
  region = "ap-northeast-1"
}

variable "instance_type" {}

resource "aws_instance" "default" {
  ami = "ami-0f9ae750e8274075b"
  vpc_security_group_ids = [aws_security_group.default.id]
  instance_type = var.instance_type

  user_data = file("./sh/user_data.sh")
}

resource "aws_security_group" "default" {
  name = "ec2"

  ingress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = ""
    from_port = 80
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    protocol = "tcp"
    security_groups = []
    self = false
    to_port = 80
  } ]

  egress = [ {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = ""
    from_port = 0
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    protocol = "-1"
    security_groups = []
    self = false
    to_port = 0
  } ]
}

output "public_dns" {
  value = aws_instance.default.public_dns
}