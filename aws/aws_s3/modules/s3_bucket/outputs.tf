output "bucket_id"{
   description = "The ID of the s3 bucket"
   value       = aws_s3_bucket.bucket.id
}
