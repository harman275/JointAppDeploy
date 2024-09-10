resource "aws_instance" "testproject" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = [var.security_group_id]

  tags = {
    Name = "testproject1"
  }
}

