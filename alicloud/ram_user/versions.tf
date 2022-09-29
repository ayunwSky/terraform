terraform {
  required_version = ">= 1.2.8"
  backend "pg" {
    conn_str = "postgres://user:pass@db.example.com/terraform_backend?sslmode=disable"
  }
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = ">=1.186.0"
    }
  }
}