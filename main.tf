data "aws_key_pair" "existing_key" {
  key_name = "testkey"
}
data "aws_vpc" "existing_vpc" {
  
    id = "vpc-0599aed54c4b224b3" # Replace with your VPC ID
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ami # Replace with your preferred AMI
  instance_type = var.instance_type
  key_name      = data.aws_key_pair.existing_key.key_name
  security_groups = module.sg.sgname

}
module "sg" {
  source = "./modules/sg"
  sgname = "testsg"
  vpc_id      = data.aws_vpc.existing_vpc.id

  
}
