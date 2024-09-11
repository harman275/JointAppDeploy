terraform {
  required_version = "v1.7.1"


  backend "s3" {
    bucket = "airflow-tssst"
    key    = "testing.tfstate"
    region = "us-east-1"

  }
}

provider "aws" {
  region = "us-east-1"
}