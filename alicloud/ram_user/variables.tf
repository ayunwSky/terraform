variable "ram_user_password" {
  type        = string
  # false 表示确保变量值在模块内永远不会为空
  nullable    = false
  default     = "Pwd123!"
  description = "alicloud ram user password"
}