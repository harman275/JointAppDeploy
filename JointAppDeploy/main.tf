data "aws_key_pair" "existing_key" {
  key_name = "testkey"
}

data "aws_vpc" "existing" {
  id = "vpc-0599aed54c4b224b3"
}


module "security_group" {
  source = "./modules/security_group"
  vpc_id = data.aws_vpc.existing.id
  sg_name = "test"
}

module "ec2" {
  source        = "./modules/ec2"

  ami           = var.ami # Replace with your preferred AMI
  instance_type = var.instance_type
  key_name      = data.aws_key_pair.existing_key.key_name
  security_group_id = module.security_group.sg_id

}
# output "ec2_instance_id" {
#   value = module.ec2_instance.instance_id
# }
