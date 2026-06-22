# main.tf is just a convention, not a requirement. 
# Terraform merges all .tf files in the directory into a single 
# configuration before planning and applying.

# EC2 Instance
resource "aws_instance" "webserver1" {
  ami = "ami-0ec10929233384c7f" # Specify an appropriate AMI ID

  instance_type = var.instance_type

  security_groups = ["default"]

  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    Name = "Terraform-EC2"
  }
}
