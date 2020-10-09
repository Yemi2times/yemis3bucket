terraform {
  backend "s3" {
    region = "eu-west-1"
    bucket = "yemi2times-state-s3"
    key    = "website.tfstate"
  }
}