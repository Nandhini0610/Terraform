output "publicip" {
    value = aws_instance.my_instance.*.public_ip
    description = "Public Ip"
}

output "privateip" {
    value = aws_instance.my_instance.*.private_ip
    description = "Private Ip"
}