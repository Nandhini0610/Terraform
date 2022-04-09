resource "aws_instance" "my_instance" {
  count                       = 2  
  ami                         = var.ami_name
  instance_type               = var.type_instance
  availability_zone           = var.zone
  subnet_id                   = var.subnet
  associate_public_ip_address = var.public_ip
  tags                        = var.tag
  key_name                    = var.key
  vpc_security_group_ids      = ["${aws_security_group.mysec.id}"]
}

resource "aws_security_group" "mysec" {
  description = "mysec"
  tags = var.tag
  dynamic "ingress" {
      for_each = var.ingressrule
      content{
          from_port = ingress.value.from_port
          to_port = ingress.value.to_port
          protocol = ingress.value.protocol
          cidr_blocks = [ingress.value.cidr_blocks]
      }
  }
   dynamic "egress" {
      for_each = var.egressrule
      content{
          from_port = egress.value.from_port
          to_port = egress.value.to_port
          protocol = egress.value.protocol
          cidr_blocks = [egress.value.cidr_blocks]
      }
  }
}