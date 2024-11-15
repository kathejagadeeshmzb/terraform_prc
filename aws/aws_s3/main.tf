provider "aws" {
  region = "us-east-2"
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = "my-unique-bucket-jaggu-8346"
}

output "bucket_id" {
  value = module.s3_bucket.bucket_id  
}

