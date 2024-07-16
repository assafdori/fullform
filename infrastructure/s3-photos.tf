resource "aws_s3_bucket" "s3-photos" {
  bucket = "technion-photos"

  tags = {
    Name = "${var.env}-s3-photos"
  }
}

resource "aws_s3_bucket_public_access_block" "s3-photos-access-block" {
  bucket = aws_s3_bucket.s3-photos.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false

  depends_on = [aws_s3_bucket.s3-photos]
}

resource "aws_s3_bucket_acl" "s3-photos-acl" {
  bucket = aws_s3_bucket.s3-photos.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "public_bucket_policy" {
  bucket = aws_s3_bucket.s3-photos.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = "*",
        Action = "s3:GetObject",
        Resource = "${aws_s3_bucket.s3-photos.arn}/*"
      }
    ]
  })
}
