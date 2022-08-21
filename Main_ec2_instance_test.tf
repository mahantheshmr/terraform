provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZCMXWI74VRS42NFR"
  secret_key = "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"
}
resource "aws_instance" "Ubuntu-instance" {
  ami             = "ami-006d3995d3a6b963b"
  instance_type   = "t2.micro"
  security_groups = ["default"]
  key_name = "Ubuntu-instance"
  tags = {
    name = "Ubuntu-instance"
  }
}

/*
ami            = "ami-006d3995d3a6b963b"     #Ubuntu Server 20.04 LTS
ami            = "ami-076e3a557efe1aa9c" #Amazon Linux 2 AMI (HVM) - Kernel 5.10

*/