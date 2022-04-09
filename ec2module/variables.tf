variable "number" {
  type        = number
  default     = 2
  description = "number of instance"
}

variable "ami_name" {
  type        = string
  default     = "ami-0c02fb55956c7d316"
  description = "Name of the ami given in the aws"
}

variable "type_instance" {
  type        = string
  default     = "t2.micro"
  description = "Instance type in the aws"
}

variable "zone" {
  type        = string
  default     = "us-east-1a"
  description = "availablity zone in the aws"
}

variable "subnet" {
  type        = string
  default     = "subnet-028899ca288243dd8"
  description = "subnet used in the aws"
}

variable "public_ip" {
  type        = bool
  default     = true
  description = "public ip enabling in the aws"
}

variable "tag" {
  type = map(string)
  default = {
    Name = "Terraform"
  }
  description = "Name of the instance"
}

variable "key" {
  type        = string
  default     = "Nandhu_key"
  description = "key pair name"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "region in the aws"
}

variable "accesskey" {
  type        = string
  description = "accesskey in the aws"
}

variable "secretkey" {
  type        = string
  description = "secretkey in the aws"
}

variable "ingressrule" {
  type        = list(map(string))
  default     = [
      {
          from_port ="9000"
          to_port = "9000"
          protocol = "tcp"
          cidr_blocks = "0.0.0.0/0"
      },
      {
          from_port ="8080"
          to_port = "8080"
          protocol = "tcp"
          cidr_blocks = "0.0.0.0/0"
      }
    ]
}

variable "egressrule" {
  type        = list(map(string))
  default     = [
      {
          from_port ="0"
          to_port = "0"
          protocol = "-1"
          cidr_blocks = "0.0.0.0/0"
      }
    ]
}