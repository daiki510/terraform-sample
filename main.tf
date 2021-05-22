provider "aws" {
  region = "ap-northeast-1"
}

variable "example_instance_type" {
  default = "t3.micro"
}

resource "aws_instance" "example" {
  ami = "ami-0f9ae750e8274075b"
  instance_type = var.example_instance_type

  tags = {
    "Name" = "example-1"
  }

  user_data = file("./user_data.sh")
}

output "example_instance_id" {
  value = aws_instance.example.id
}