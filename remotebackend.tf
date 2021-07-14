terraform {
  backend "s3" {
    bucket = "suketerraformbucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "devopsb16-terraform-state-lock"
  }
}