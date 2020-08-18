resource "aws_dynamodb_table" "terraform-lock" {
    name           = var.dynamodb_table_name
    read_capacity  = var.dynamodb_table_read_capacity
    write_capacity = var.dynamodb_table_write_capacity
    hash_key       = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
    tags = {
        "Name" = "DynamoDB Terraform State Lock Table"
    }
}
