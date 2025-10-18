resource "aws_instance" "terraform" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.allow-all.id ]
  tags = var.ec2-tags
}

resource "aws_security_group" "allow-all" {
  name   = var.sg_name
  
  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow-all"
  }

}
