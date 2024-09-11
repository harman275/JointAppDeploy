variable "cluster_name" {
  default = "eksclusterdemo"
  type    = string
}

variable "cluster-role" {
  default = "eks-cluster-role"
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

variable "node_role" {
  default = "eksnoderole"
  type    = string
}

# variable "subnet_ids" {
#   default = [
#           "subnet-074c3071885757019",
#           "subnet-0bb9e98f620b18426"
#         ]
#   type    = list(string)
# }
variable "vpc-cidr-block" {
    default = "10.0.0.0/16"
    type    = string
}

variable "vpc-name" {
    default = "custom-vpc"
    type    = string
}

variable "internet-gateway-name" {
    default = "custom-igw"
    type    = string
}
