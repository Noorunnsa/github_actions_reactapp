provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true
  user_data                   = <<-EOF
              #!/bin/bash
              sudo su - root
              curl -fsSL https://get.docker.com -o get-docker.sh
              chmod +x get-docker.sh 
              sh get-docker.sh
              EOF

  tags = {
    Name = "Terraform-EC2"
  }
}

