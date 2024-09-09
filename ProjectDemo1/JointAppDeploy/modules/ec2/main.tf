resource "aws_instance" "testproject" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name

  tags = {
    Name = "testproject1"
  }
}

