terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3_bucket_names" {
  source = "./modules/s3"
  s3_bucket_names = var.s3_bucket_names
}
