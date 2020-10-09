resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_object" "b" {
  key          = "index.html"
  acl          = "public-read"
  bucket       = aws_s3_bucket.b.id
  source       = "index.html"
  content_type = "text/html"
}