variable "name" {
    type = string
    default = "locals"
}


variable "environment" {
    type = string
    default = "dev"
}


variable "ec2_tags" {
    default = {
        Name = "locals-demo"
        Environment = "prod"
    }
}


/* variable "instance_type" {
  type = string
   default = "${var.name}-${var.environment}"
} */