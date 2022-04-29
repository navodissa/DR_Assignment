# Create a DynamoDB table to lock the shared Terraform state for Kubernetes cluster resources

resource "aws_dynamodb_table" "clusters_dynamodb_tf_state_lock" {
  name           = "${var.clusters_name_prefix}-terraform-state-lock-dynamodb"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}

# Create a DynamoDB table to lock the shared Terraform state for VPC

resource "aws_dynamodb_table" "clusters_vpc_dynamodb_tf_state_lock" {
  name           = "${var.clusters_name_prefix}-vpc-terraform-state-lock-dynamodb"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
