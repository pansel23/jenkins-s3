provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "image_bucket" {
  bucket = var.bucket_name
  force_destroy = true
}

resource "aws_s3_object" "image" {
  bucket = aws_s3_bucket.image_bucket.id
  key    = "image.jpg"
  source = "image.jpg"
  etag   = filemd5("image.jpg")
  content_type = "image/jpeg"
}