variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}


variable "ec2-tags" {
  type = map
  default = {
    Name = "terraform"
    Terraform ="true"
    Project = "joindevops"
    Environment = "dev"

  }
}

variable "sg_name" {
    type = string
    default = "allow-all"
    description = "security group name to attach to ec2 instance"

}

variable "cidr" {

    type = list
    default = ["0.0.0.0/0"]  

}

variable "ingress_from_port" {
    default = 0
  
}

variable "ingress_to_port" {
    default = 0
  
}
variable "egress_from_port" {
    default = 0
  
}
variable "egress_to_port" {
    default = 0
  
}
variable "protocol" {
    type = string
    default = "-1"
  
}