variable "ami" {
  type    = string
  default = "ami-0e86e20dae9224db8"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
variable "bucketname" {
  type    = string
  default = "my-tf-test-bucket"
}

variable "cluster_name" {
  default = "eksclusterdemo"
  type    = string
}

variable "instance_types" {
  default = "t2.medium"
  type    = string
}

variable "node_group_name" {
  default = "eksnodegroup"
  type    = string
}