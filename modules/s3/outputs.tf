output "bucket_name" {
  value = [for bucket_name in aws_s3_bucket.my_bucket : bucket_name.bucket]
}
