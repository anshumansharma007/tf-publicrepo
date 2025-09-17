# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myec2-local" {
  ami           = "ami-0b982602dbb32c5bd"
  instance_type = "t2.micro"
  tags = {
    Name = "MyFirstEC2"
  }
}
