aws_region = "us-east-1"
private_subnet_ids = [
  "subnet-0413c90fb7c409e9f",
  "subnet-09e5b80343829433c",
  "subnet-0faf0902121ce3504",
]
public_subnet_ids = [
  "subnet-01b5cbecc94a76e4a",
  "subnet-04908c28b38a0edca",
  "subnet-03f981c487cbf9530",
]
vpc_id                = "vpc-0325cd013455bbe8a"
clusters_name_prefix  = "digitalroutecluster"
cluster_version       = "1.21"
workers_instance_type = "t3.medium"
workers_number_min    = 1
workers_number_max    = 2
workers_storage_size  = 10
