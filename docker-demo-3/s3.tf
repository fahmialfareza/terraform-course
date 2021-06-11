resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-4lf4r3z4"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}
