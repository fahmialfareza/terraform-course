terraform {
  backend "s3" {
    bucket  = "terraform-state-alfareza"
    key     = "terraform/demo4"
    region  = "ap-southeast-1"
  }
}
