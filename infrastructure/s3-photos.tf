resource "aws_s3_bucket" "s3-photos" {
  bucket = "technion-photos"

  tags = {
    Name = "${var.env}-s3-photos"
  }
}
