aws_region           = "us-east-1"
clusters_name_prefix = "digitalroute"
vpc_block            = "10.40.0.0/17"
public_subnets_prefix_list = [
  "10.40.0.0/20",
]
private_subnets_prefix_list = [
  "10.40.64.0/20",
]
