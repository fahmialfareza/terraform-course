provider "aws" {
  access_key = "AKIAQFAP2BK27NRLQRKC"
  secret_key = "aWCrt3NxA4AbsqK+Nh4Fp7Bz24lJTLXm4QtvHFIX"
  region     = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0012ffabeb7413479"
  instance_type = "t2.micro"
}
