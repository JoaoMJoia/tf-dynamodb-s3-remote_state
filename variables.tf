variable "aws-profile" {
  description = "AWS user profile"
}

variable "aws-region" {
  description = "AWS region"
}

variable "dynamodb_table_name" {
  description = "Name of the dynamoDB table"
}

variable "dynamodb_table_read_capacity" {
  description = "Read capacity of the dynamoDB table"
  default     = 5
}

variable "dynamodb_table_write_capacity" {
  description = "Write capacity of the dynamoDB table"
  default     = 5
}

variable "aws_s3_bucket_bucket_name" {
  description = "Name of the bucket"
}

variable "aws_s3_bucket_object_name" {
  description = "Name of the bucket"
}
