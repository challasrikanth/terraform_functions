
# resource "aws_route53_record" "records" {
#   count = length(var.instances)
#   zone_id = var.zone_id
#   name    = "${var.instances[count.index]}.${var.domain_name}"    # monogdb.srikanthchall.online
#   type    = "A"
#   ttl     = 300
#   records = [aws_instance.count-1[count.index].private_ip]
# }


resource "aws_route53_record" "records" {
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"    # monogdb.srikanthchall.online
  type    = "A"
  ttl     = 1
  records = [aws_instance.count-1[index(var.instances, "frontend")].public_ip]

}



#

