output "bucket_name" {
  value = aws_s3_bucket.image_bucket.bucket
}

output "image_url" {
  value = "https://${aws_s3_bucket.image_bucket.bucket}.s3.amazonaws.com/image.jpg"
}