variable "iaceksregion" {
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  default = "10.55.55.0/24"
}

# VPC Availability Zones
variable "az_primary" {
  description = "A list of availability zones names in the region"
  type        = string
  default     = "us-east-1a"
}

variable "az_secondary" {
  description = "A list of availability zones names in the region"
  type        = string
  default     = "us-east-1b"
}

variable "subnet_azp_public" {
  default = "10.55.55.0/26"
}

variable "subnet_azp_private" {
  default = "10.55.55.64/26"
}

variable "subnet_azs_public" {
  default = "10.55.55.128/26"
}

variable "subnet_azs_private" {
  default = "10.55.55.192/26"
}