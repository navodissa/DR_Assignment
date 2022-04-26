aws_region = "us-east-1"
private_subnet_ids = [
  "subnet-083879cff50416edb",
  "subnet-0fd3dc47dd9010b42",
  "subnet-02d8a1cd6fcc2b69a",
]
public_subnet_ids = [
  "subnet-0150e2a0cb764052e",
  "subnet-035cc405f68a3a9ad",
  "subnet-016f735f848ba7199",
]
vpc_id                = "vpc-0a22b8a7f08a334e4"
clusters_name_prefix  = "digitalroutecluster"
cluster_version       = "1.21"
workers_instance_type = "t3.medium"
workers_number_min    = 1
workers_number_max    = 2
workers_storage_size  = 10
