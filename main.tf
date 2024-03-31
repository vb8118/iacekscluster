

# resource "aws_instance" "my_vm" {
#   ami           = "ami-0e731c8a588258d0d" //Ubuntu AMI
#   instance_type = "t2.micro"

#   tags = {
#     Name = "EC2-app-tfm",
#   }
# }

module "vpc" {
  source = "./vpc"

  az_secondary       = var.az_secondary
  az_primary         = var.az_primary
  vpc_cidr_block     = var.vpc_cidr_block
  subnet_azs_public  = var.subnet_azs_public
  subnet_azs_private = var.subnet_azs_private
  subnet_azp_public  = var.subnet_azp_public
  subnet_azp_private = var.subnet_azp_private

}

module "iam" {
  source      = "./iam"
  clusterName = var.clusterName

  az_secondary       = var.az_secondary
  az_primary         = var.az_primary
  vpc_cidr_block     = var.vpc_cidr_block
  subnet_azs_public  = var.subnet_azs_public
  subnet_azs_private = var.subnet_azs_private
  subnet_azp_public  = var.subnet_azp_public
  subnet_azp_private = var.subnet_azp_private
}