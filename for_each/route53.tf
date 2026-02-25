/*  resource "aws_route53_record" "records" {
   for_each = aws_instance.count-1
   zone_id = var.zone_id
   name    = "${each.key}.${var.domain_name}"   #monogdb.srikanthchall.online # key here get name of instance 
   type    = "A"
   ttl     = 300
   records =  [each.value.private_ip]  # value here we get private ip 
 }

 */

 resource "aws_route53_record" "records" {

   zone_id = var.zone_id
   name    = "roboshop.${var.domain_name}"
   type    = "A"
   ttl     = 300
   records =  [lookup(aws_instance.count-1, "frontend").public_ip]  # value here we get private ip 
 }