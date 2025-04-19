provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "windows_devops_app" {
  ami                    = "ami-07c1207a9d40bc3bd" 
  instance_type          = "t2.micro"
  key_name               = var.key_name
  associate_public_ip_address = true
  user_data              = file("scripts/deploy.ps1")

  tags = {
    Name = "WindowsDevOpsApp"
  }

  platform = "windows"
}