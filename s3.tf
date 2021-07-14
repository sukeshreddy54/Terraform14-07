resource "aws_s3_bucket" "statebucket" {
  bucket = "devopsb16remotestate"
  acl    = "private"

  tags = {
    Name        = "terraform state bucket"
    Environment = "Dev"
  }

  depends_on = [
   aws_vpc.myvpc
 ]
}



