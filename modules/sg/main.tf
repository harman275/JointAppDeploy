# Security Group that allows SSH (Port 22)
resource "aws_security_group" "allow_ssh" {
  name        = var.sgname
  description = "Allow SSH inbound traffic"
  vpc_id      = var.vpc_id
  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] 
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"  
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}