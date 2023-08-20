# This resource has no identified cost 
resource "aws_subnet" "subnet_0291d0acc48a58c1a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.64.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

# This resource has no identified cost 
resource "aws_subnet" "subnet_04f8e5219f5bf736f" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.16.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

# This resource has no identified cost 
# Created at 2023-08-20 by root
resource "aws_subnet" "subnet_07624cc5b8fba4220" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.80.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

# This resource has no identified cost 
# Created at 2023-08-20 by ElasticLoadBalancing
resource "aws_subnet" "subnet_0f4719c7fe46fb68a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.0.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

# This resource has no identified cost 
# Created at 2023-08-20 by ElasticLoadBalancing
resource "aws_vpc" "vpc_0e09893b5558d2100" {
  assign_generated_ipv6_cidr_block     = "false"
  cidr_block                           = "172.31.0.0/16"
  enable_classiclink                   = "false"
  enable_classiclink_dns_support       = "false"
  enable_dns_hostnames                 = "true"
  enable_dns_support                   = "true"
  enable_network_address_usage_metrics = "false"
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = "0"
}

# This resource has no identified cost 
resource "aws_internet_gateway" "igw_04c005e43b0b3691b" {
  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

# This resource has no identified cost 
resource "aws_subnet" "subnet_017ae65aee75cce1b" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.32.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

# This resource has no identified cost 
resource "aws_subnet" "subnet_01ead941fe1427f3a" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "172.31.48.0/20"
  enable_dns64                                   = "false"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "true"
  private_dns_hostname_type_on_launch            = "ip-name"
  vpc_id                                         = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0e09893b5558d2100_id}"
}

