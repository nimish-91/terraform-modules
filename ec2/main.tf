resource "aws_instance" "linux" {
  ami           = var.linux_ami
  instance_type = var.instance_type
  subnet_id     = var.private_subnet_id
  vpc_security_group_ids = [var.sg_id]

  user_data = file("${path.root}/user-data/linux-user.sh")

  tags = {
    Name = "private-linux"
  }
}
resource "aws_instance" "windows" {
  ami           = var.windows_ami
  instance_type = var.instance_type
  subnet_id     = var.public_subnet_id
  vpc_security_group_ids = [var.sg_id]

  user_data = file("${path.root}/user-data/windows-user.ps1")

  tags = {
    Name = "public-windows"
  }
}