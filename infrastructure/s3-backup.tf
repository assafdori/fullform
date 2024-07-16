resource "aws_s3_bucket" "backup" {
  bucket = "technion-photos-backup"

  tags = {
    Name = "technion-photos-backup"
  }
}
