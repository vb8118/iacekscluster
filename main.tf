

# resource "aws_instance" "my_vm" {
#   ami           = "ami-0e731c8a588258d0d" //Ubuntu AMI
#   instance_type = "t2.micro"

#   tags = {
#     Name = "EC2-app-tfm",
#   }
# }

module "vpc" {
  source = "./vpc"

  vpc_cidr_block     = var.vpc_cidr_block
  subnet_az2_public  = var.subnet_az2_public
  subnet_az2_private = var.subnet_az2_private
  subnet_az1_public  = var.subnet_az1_public
  subnet_az1_private = var.subnet_az1_private

}

