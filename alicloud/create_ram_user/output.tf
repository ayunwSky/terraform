output "ram_user_name" {
  value       = alicloud_ram_login_profile.profile.user_name
  description = "alicloud ram user name"
}

output "ram_user_password" {
  value       = alicloud_ram_login_profile.profile.password
  # 命令行输出中隐藏 password 的值(其实也可以注释掉这部分不输出)
  sensitive   = true
  description = "alicloud ram user password"
}