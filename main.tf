resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.key_name
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "local_file" "pem_file" {
  filename        = "${path.module}/${var.key_name}.pem"
  content         = tls_private_key.ssh_key.private_key_pem
  file_permission = "0400"
}

module "ec2" {
  source = "./modules/ec2"

  instance_name      = var.instance_name
  instance_type      = "t2.micro"
  ami_id             = var.ami_id
  key_name           = aws_key_pair.generated_key.key_name
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
}

