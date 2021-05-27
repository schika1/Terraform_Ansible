resource "aws_security_group" "apache_server_sg" {
    vpc_id = aws_default_vpc.default.id
    description = "Allow TLS inbound traffic for SSH and HTTP"

     ingress {
        description = "http rule"
        from_port   = var.http_port
        to_port     = var.http_port
        protocol    = "tcp"
        cidr_blocks = [var.frontend_sg_cidr]
    }

    ingress {
        description = "ssh_rule"
        from_port   = var.ssh_port
        to_port     = var.ssh_port
        protocol    = "tcp"
        cidr_blocks = [var.frontend_sg_cidr]
    }

    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.frontend_sg_cidr]
  }

  tags = {
    Name = "apache_server_sg"
  }
}