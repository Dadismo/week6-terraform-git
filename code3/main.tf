resource "aws_lightsail_instance" "my_server1" {
  name              = "week_5"
  availability_zone = "us-east-2a"
  blueprint_id      = "centos_7_2009_01"
  bundle_id         = "micro_1_0"
  user_data         = "sudo su - yum install -y httpd && sudo su - systemctl start httpd && sudo su - systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo su - tee /var/www/html/index.html"
}