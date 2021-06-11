provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0012ffabeb7413479"
  instance_type = "t2.micro"
}
