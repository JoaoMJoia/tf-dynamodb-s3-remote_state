resource "aws_s3_bucket" "bucketdir" {
    bucket = var.aws_s3_bucket_bucket_name
    acl    = "private"
    versioning {
        enabled = true
    }
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }
    tags = {
        Name = "S3 Remote Terraform State Store"
    }
    lifecycle_rule {
      id      = "glacier"
      enabled = true
      prefix = var.aws_s3_bucket_object_name

      transition {
        days          = 60
        storage_class = "GLACIER"
      }
  }
}


resource "aws_s3_bucket_object" "bucketobjectdir" {
  bucket = aws_s3_bucket.bucketdir.id
  acl    = "private"
  key    = var.aws_s3_bucket_object_name
  source = "/dev/null"
}
