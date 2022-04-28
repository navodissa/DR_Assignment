aws_region = "us-east-1"
private_subnet_ids = [
  "subnet-0880f77eda5c9e0c5",
  "subnet-0943d2095820218a0",
  "subnet-0d0b2ae967c7e022e",
]
public_subnet_ids = [
  "subnet-0c436d48b537fc065",
  "subnet-0fc6c70fe7abeb857",
  "subnet-0d4d3d26a2a185428",
]
vpc_id                = "vpc-00405e8ee76e4f323"
clusters_name_prefix  = "digitalroutecluster"
cluster_version       = "1.21"
workers_instance_type = "t3.medium"
workers_number_min    = 1
workers_number_max    = 2
workers_storage_size  = 10
