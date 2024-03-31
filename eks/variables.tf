variable "vpc_cidr_block" {
  type = string
  description = "VPC CIDR block"
}

variable "clusterName" {
  description = "Cluster Name"
  type        = string
}

variable "az_primary" {
  type = string
  description = "Primary Availability Zone"
}

variable "az_secondary" {
  type = string
  description = "Secodnary Availability zone"
}

variable "subnet_azs_public" {
  type = string
  description = "Availability zone secondary public subnet"
}

variable "subnet_azs_private" {
  type = string
  description = "Availability zone secondary private subnet"
}

variable "subnet_azp_public" {
  type = string
  description = "Availability zone primary public subnet"
}

variable "subnet_azp_private" {
  type = string
  description = "Availability zone primary private subnet"
}