
resource "aws_dynamodb_table" "tester" {
  name         = local.l
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
