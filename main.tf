data "aws_key_pair" "existing_key" {
  key_name = "testkey"
}

module "ec2" {
  source        = "./modules/ec2"
  ami           = var.ami # Replace with your preferred AMI
  instance_type = var.instance_type
  key_name      = data.aws_key_pair.existing_key.key_name

}
