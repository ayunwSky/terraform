output "DNS" {
  value       = aws_instance.app_server.public_dns
  description = "AWS EC2 public DNS"
}

output "instance_private_ip_addr" {
  value       = aws_instance.app_server.private_ip
  sensitive   = true
  description = "AWS EC2 private IP"
}

output "instance_public_ip_addr" {
  value       = aws_instance.app_server.public_ip
  description = "AWS EC2 public IP"
}
