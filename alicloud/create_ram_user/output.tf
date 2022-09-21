output "ram_user_name" {
  value       = alicloud_ram_login_profile.profile.user_name
  description = "alicloud ram user name"
}

output "ram_user_password" {
  value       = alicloud_ram_login_profile.profile.password
  sensitive   = true
  description = "alicloud ram user password"
}