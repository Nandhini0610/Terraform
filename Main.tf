provider "aws" {
  region     = var.region
  access_key = var.accesskey
  secret_key = var.secretkey
}

variable "accesskey" {
  type        = string
}

variable "secretkey" {
  type        = string
}

module "ec2instance" {
    source = "./ec2module"  
    accesskey = var.accesskey
    secretkey = var.secretkey

}