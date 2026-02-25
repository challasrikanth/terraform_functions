variable "instances" {
    type = list 
    default = ["mongodb", "catalogue","redis","mysql","frontend"]
  
}


variable "zone_id" {
   default = "Z09279692055UBYT8TIQD"
}

variable "domain_name" {
    default = "srikanthchalla.online"
  
}