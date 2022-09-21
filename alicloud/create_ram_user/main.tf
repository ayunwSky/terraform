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
  password  = var.ram_user_password
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