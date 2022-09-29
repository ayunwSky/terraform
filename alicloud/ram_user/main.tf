# terraform {
#   required_version = ">= 1.2.8"
#   required_providers {
#     alicloud = {
#       source  = "aliyun/alicloud"
#       version = ">=1.186.0"
#     }
#   }
# }

resource "alicloud_ram_user" "user" {
  name         = "ayunw"
  display_name = "ayunw"
  mobile       = "86-177xxxx3850"
  email        = "ayunwsky@163.com"
  comments     = "This is RAM user [ayunw] account."
  force        = true
}

resource "alicloud_ram_login_profile" "profile" {
  user_name = alicloud_ram_user.user.name
  # 使用变量的形式，默认以交互式输入密码
  # 或者在命令行使用 -var "ram_user_password=ayunw#123.." 来指定密码
  # 注意：使用 -var 命令指定的密码，如果包含叹号似乎会报错
  #password  = var.ram_user_password
  
  # 写死密码 或者 在 variables.tf 中设置 default 默认值
  #password  = "ayunw#123..!"
}

resource "alicloud_ram_access_key" "ak" {
  user_name   = alicloud_ram_user.user.name
  secret_file = "accesskey.csv"
}

resource "alicloud_ram_group" "group" {
  name     = "infra_ram_group"
  comments = "This is RAM group."
  force    = true
}

resource "alicloud_ram_group_membership" "membership" {
  group_name = alicloud_ram_group.group.name
  user_names = [alicloud_ram_user.user.name]
}