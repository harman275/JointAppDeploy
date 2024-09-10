variable "ami" {
  type    = string
  default = "ami-0933a44cc0fb1a33b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "bucketname" {
  type    = string
  default = "my-tf-test-bucket"
}
variable "sg_name" {
  type = string
  default = "testsg"
  
}