resource "aws_instance" "webec2" {
    ami = var.ami-id
    associate_public_ip_address = true
    instance_type = "t2.micro"
    key_name = "jenkins"
    vpc_security_group_ids = [ aws_security_group.web_sg.id]
    subnet_id = module.vpc.public_subnets[0]
    tags = {
      "Name" = "web"
    }
    depends_on = [
      module.vpc,
      aws_security_group.web_sg
    ]
    provisioner "remote-exec" {

    connection {
        type = "ssh"
        user = "ubuntu"
        private_key = file("/home/ubuntu/id_rsa")
        host = "aws_intance.public_ip"
    }
    inline = [
        "curl -fsSL https://get.docker.com -o get-docker.sh",
        "sh get-docker.sh",
        "sudo systemlctl start docker",
        "sudo systemctl enable docker",
        "sudo usermod -aG docker ubuntu",
        "sudo systemctl restart docker",
        "docker info"
    ]
      
  }
}
