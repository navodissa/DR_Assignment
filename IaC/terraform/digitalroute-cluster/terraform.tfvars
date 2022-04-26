aws_region = "us-east-1"
private_subnet_ids = [
  "subnet-00e068b687fd478a3",
  "subnet-05fce183734e1e800",
  "subnet-0b55b3b04b188a48e",
]
public_subnet_ids = [
  "subnet-02704633c279a0690",
  "subnet-0b35833b8f9a3fb8a",
  "subnet-03bef21076911c57b",
]
vpc_id                = "vpc-06e6e90fa592d69bf"
clusters_name_prefix  = "digitalroutecluster"
cluster_version       = "1.21"
workers_instance_type = "t3.medium"
workers_number_min    = 1
workers_number_max    = 2
workers_storage_size  = 10
