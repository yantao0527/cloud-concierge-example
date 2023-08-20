variable "org" {
  description = "The root organization name within Terraform Cloud."
  type        = string
  default     = "frank-cloud"
}

# variable "subnet_id_one" {
#   description = "The ID of the first subnet to which the secrets and IAM definitions are deployed."
#   type        = string
#   default     = "subnet-0f4719c7fe46fb68a"
# }

# variable "subnet_id_two" {
#   description = "The ID of the second subnet to which the secrets and IAM definitions are deployed."
#   type        = string
#   default     = "subnet-07624cc5b8fba4220"
# }

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "dragon"
}

variable "region" {
  type        = string
  description = "aws region"
  default     = "us-east-1"
}

variable "zone_1" {
  type        = string
  description = "aws zone"
  default     = "us-east-1b"
}

variable "vpc_cidr" {
  type        = string
  description = "aws vpc CIDR"
  default     = "192.168.0.0/16"
}

variable "vsw_1_cidr" {
  type        = string
  description = "aws subnet CIDR"
  default     = "192.168.11.0/24"
}

