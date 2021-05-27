output "server_public_ip" {
    value = aws_instance.Apache_Server.public_ip
}