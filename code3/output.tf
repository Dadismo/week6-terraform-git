output "instance_IP" {
  value = aws_lightsail_instance.my_server1.public_ip_address
}

output "my_arn" {
  value = aws_lightsail_instance.my_server1.arn
}

output "private_IP" {
  value = aws_lightsail_instance.my_server1.private_ip_address
}