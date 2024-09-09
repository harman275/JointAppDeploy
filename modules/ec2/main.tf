resource "aws_instance" "testproject" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install apt-transport-https curl
              sudo apt install docker.io -y
              sudo systemctl enable docker
              sudo systemctl start docker


              sudo apt update
              sudo apt install -y curl wget apt-transport-https
              curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
              sudo install minikube-linux-amd64 /usr/local/bin/minikube
              curl -LO https://storage.googleapis.com/kubernetes-release/release/"curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt"/bin/linux/amd64/kubectl
              chmod +x kubectl
              sudo mv kubectl /usr/local/bin/
              minikube start — driver=docker --force
              EOF

  tags = {
    Name = "testproject1"
  }
}

