provider "aws"{
    region = "us-east-1"
    access_key = "AKIAYR5QJAKQQDMQZ7UJ"
    secret_key = "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"
}

resource "aws_instance" "pro1" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.instance_key
    subnet_id = var.public_subnet_cidr
    security_groups = [var.security_groups]
    associate_public_ip_address = true
    tags = {
        name = "pro1"
    }
  
}