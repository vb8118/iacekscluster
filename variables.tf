variable "iaceksregion" {
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  default = "10.55.55.0/24"
}

# VPC Availability Zones
variable "azs" {
  description = "A list of availability zones names in the region"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "subnet_az1_public" {
  default = "10.55.55.0/26"
}

variable "subnet_az1_private" {
  default = "10.55.55.64/26"
}

variable "subnet_az2_public" {
  default = "10.55.55.128/26"
}

variable "subnet_az2_private" {
  default = "10.55.55.192/26"
}