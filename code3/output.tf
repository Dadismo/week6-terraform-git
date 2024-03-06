output "instance_IP" {
  value = aws_instance.EC2.public_ip
}

output "my_arn" {
  value = aws_instance.EC2.arn
}

output "private IP" {
  value = aws_instance.EC2.private_ip
}