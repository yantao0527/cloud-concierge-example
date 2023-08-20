variable "org" {
  description = "The root organization name within Terraform Cloud."
  type        = string
  default     = "frank-cloud"
}

variable "region" {
  type        = string
  description = "aws region"
  default     = "us-east-2"
}

# variable "subnet_id_one" {
#   description = "The ID of the first subnet to which the secrets and IAM definitions are deployed."
#   type        = string
# }

# variable "subnet_id_two" {
#   description = "The ID of the second subnet to which the secrets and IAM definitions are deployed."
#   type        = string
# }

variable "vpc_cidr" {
  type        = string
  description = "aws vpc CIDR"
  default     = "192.168.0.0/16"
}

variable "prefix" {
  type        = string
  description = "Prefix added to names of all resources"
  default     = "dragon"
}
