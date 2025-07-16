provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "ansible_controller" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "project.pem"

  tags = {
    Name = "AnsibleController"
  }
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "project.pem"

  tags = {
    Name = "JenkinsServer"
  }
}

resource "aws_security_group" "allow_ssh_between_instances" {
  name        = "allow-ssh"
  description = "Allow SSH between instances"
  vpc_id      = "your-default-vpc-id"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["18.175.250.206"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_ecr_repository" "kloudvidhya_ecr" {
  name = "kloudvidhya_ecr_repo1"
}

