The count.index variable in Terraform is used to create multiple instances of a resource or module. It helps in managing similar infrastructure objects efficiently.


i want to create 3 instances so instead of creating  multiple  resources of instances  block i can define count = 3  so it loops and create 3 instances , but if i define

tag name = front-end , it creates 3 instances with same name ,

if you define instances name as below in list   and if you use count.index it loops the list and assign or create instances with tag name as defined in list 
Example
variable "instances" {
  type = list 
  default = ["Server 0", "Server 1", "server 2"]
}
resource "aws_instance" "server" {
count = 3
# count = length(var.instances )
ami = "ami-123456"
instance_type = "t2.micro"
tags = {
Name = "Server ${count.index}"
}
}

In this example, three AWS EC2 instances are created, each with a unique name tag: Server 0, Server 1, and Server 2.
