variable "PATH_TO_PUBLIC_KEY" {
    type = string
    default = "key.pub"
}

variable "instance_type" {
    type = string
  default = "t2.micro"
}

variable "ami" {
    type = string
    default = "ami-06178cf087598769c"
}

variable "frontend_sg_cidr" {
    type = string
    default = "0.0.0.0/0"
}

variable "ssh_port" {
    type = number
    default = 22
}

variable "http_port" {
    type = number
    default = 80
}

variable "jenkins_port" {
    type = number
    default = 8080
}

variable "egress"{
    default = 0
}

variable "region" {
    type = string
    default = "eu-west-2"
}

variable "az2a"{
    type = string
    default = "eu-west-2a"
}
variable "az2b"{
    type = string
    default = "eu-west-2b"
}
