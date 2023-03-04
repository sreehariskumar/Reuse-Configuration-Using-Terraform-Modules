variable "project" {
  default = "zomato"
}

variable "environment" {
  default = "production"
}

variable "region" {
  default = "ap-south-1"
}

variable "access_key" {
  default = "AKIASXJHQP6OTI3JEYAU"
}

variable "secret_key" {
  default = "0doUg/2ILLyCQTtXMJs3Af6XQmU0cR5XHv/pbSfB"
}

variable "instance_ami" {
  default = "ami-0cca134ec43cf708f"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_cidr" {
  default = "172.16.0.0/16"
}

variable "private_domain" {
  default = "sreehari.local"
}

variable "public_domain" {
  default = "1by2.online"
}

variable "db_name" {
  default = "wordpress"
}

variable "db_user" {
  default = "wordpress"
}

variable "db_pass" {
  default = "wordpress"
}

locals {
  db_host = "db.${var.private_domain}"
}

variable "public_ips" {
  type = list(string)
  default = [
    "49.37.235.58/32"
  ]
}

variable "frontend_ports" {
  type    = list(string)
  default = ["80", "443", "8080"]
}

variable "ssh_to_frontend" {
  default = true
}

variable "ssh_to_backend" {
  default = true
}

variable "backend_ports" {
  default = 3306
}

variable "bastion_ports" {
  default = 22
}

locals {
  common_tags = {
    "project"     = var.project
    "environemnt" = var.environment
  }
}

variable "enable_nat_gateway" {
  default = true
}
