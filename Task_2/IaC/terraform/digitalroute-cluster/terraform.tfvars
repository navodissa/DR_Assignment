aws_region = "us-east-1"
public_subnet_ids = [
  "subnet-0c436d48b537fc065",
  "subnet-0fc6c70fe7abeb857",
  "subnet-0d4d3d26a2a185428",
]
private_subnet_ids = [
  "subnet-0c436d48b538fc087",
  "subnet-0e96c70fe7abeb965",
  "subnet-0a5d3d26a2a185544",
]
vpc_id                = "vpc-00405e8ee76e4f323"
clusters_name_prefix  = "digitalroutecluster"
cluster_version       = "1.21"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10
