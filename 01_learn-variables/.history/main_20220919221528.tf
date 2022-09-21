/*
 * 创建 AWS EC2 实例
 * 允许通过 22 端口进行 ssh 登录
 */

provider "aws" {
  region = var.region
}

data "aws_security_groups" "default" {
  filter {
    name  = "group-name"
    value = ["default"]
  }
}

resource "aws_instance" "app_server" {
  ami           = lookup(var.amis, var.region)
  instance_type = var.instance_type
  key_name      = awk_key_pair.ssh_public_key.key_name
  #user_data     = file("setup_nginx.sh")
  user_data     = templatefile("setup_nginx.sh", {time = timestamp()})
  tags = {
    Name = "nginx-web-server"
  }
}

# 添加 SSH 登录秘钥
resource "aws_key_pari" "ssh_public_key" {
  key_name   = "root"
  public_key = file(var.public_key)
}

# 开放 22 端口，允许 SSH 登录
resource "aws_security_group_rule" "ssh" {
  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  #security_group_id = var.security_group
  security_group_id = data.aws_security_groups.default.ids[0]
}

# 添加 80 端口，允许 WEB 访问
resource "aws_security_group_rule" "ssh" {
  type        = "ingress"
  from_port   = 80
  to_port     = 80
  protocol    = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  #security_group_id = var.security_group
  security_group_id = data.aws_security_groups.default.ids[0]
}