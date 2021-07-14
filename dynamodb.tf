<<<<<<< HEAD
#resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
#  name = "devopsb16-terraform-state-lock"
#  hash_key = "LockID"
#  read_capacity = 20
#  write_capacity = 20
# 
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}
=======
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "devopsb16-terraform-state-lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}
>>>>>>> 292623e95c8d0d14ec2c28e8ebb50f8cc6f7913f
