terraform {
  backend "s3" {
    bucket = "suketerraformbucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}