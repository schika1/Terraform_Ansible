# Create Key pair
resource "aws_key_pair" "key" {
    key_name = "key"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

 # Deploying Web Servers
resource "aws_instance" "Apache_Server" {
    vpc_security_group_ids = [aws_security_group.apache_server_sg.id]
    key_name = aws_key_pair.key.key_name
    ami = var.ami
    instance_type = var.instance_type
    associate_public_ip_address = true
    availability_zone = var.az2a

    tags = {
        Name = "Apache_Server"
    }
}