variable "region"{
    default = "us-east-1"
}
variable "instance_type"{
    default = "t2.micro"
}
variable "instance_key"{
    default = "nvirginia"
}
variable "public_subnet_cidr"{
    default = "subnet-0a28597f9afc2f075"
}
variable "security_groups"{
    default = "sg-01e64c383f60cd6d0"
}
variable "ami"{
    default = "ami-053b0d53c279acc90"
}