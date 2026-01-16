resource "aws_s3_bucket" "my_bucket" {
  for_each = var.s3_bucket_names
  bucket = each.value

  tags = {
    Name        = each.value
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  for_each = aws_s3_bucket.my_bucket
  bucket = each.value.id
  versioning_configuration {
    status = "Enabled"
  }
}
