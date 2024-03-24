variable "iaceksregion" {
    default = "us-east-1"
}

variable "vpc_cidr_block" {
    default = "10.55.55.0/24"
}

variable "subnet_public" {
    default = "10.55.55.0/25"
}

variable "subnet_private" {
    default = "10.55.55.128/25"
}