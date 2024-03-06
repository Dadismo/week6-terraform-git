 # Create Web Security Group
resource "aws_security_group" "web-sg" {
  name        = "docker-Web-SG"
  description = "Allow http inbound traffic"
  vpc_id      = aws_default_vpc.default_vpc.id

  ingress {
      description = "ingress port "
      #from_port   = ingress.value
      from_port   = 8000
      to_port     = 8100
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    
  }
egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "docker-Web-SG"
  }
}

#data for amazon linux

data "aws_ami" "amazon-2" {
    most_recent = true
  
    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-x86_64-ebs"]
    }
    owners = ["amazon"]
  }
 
 # Create a EC2 instance
resource "aws_instance" "EC2" {
  ami              = data.aws_ami.amazon-2.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.web-sg.id ]
  user_data         = file("script.sh")

tags = {
    Name = "docker instance"
  }
  provisioner "local-exec" {
    command = "sleep 300"
  }
}

 