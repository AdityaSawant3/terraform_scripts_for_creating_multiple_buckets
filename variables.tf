variable "region" {
  type = string
  default = "ap-south-1"
}

variable "s3_bucket_names" {
  type = set(string)
  default = [
    "DEFINE_NAME_FOR_1st_BUCKET",
    "DEFINE_NAME_FOR_2nd_BUCKET",
    "DEFINE_NAME_FOR_3rd_BUCKET"
  ]
}
