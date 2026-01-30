resource "aws_instance" "linux" {
  ami                    = var.linux_ami
  instance_type          = var.instance_type
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]

  user_data = file("${path.root}/user-data/jenkins-user.sh")

  tags = {
    Name = "public-linux-server"
  }
}
