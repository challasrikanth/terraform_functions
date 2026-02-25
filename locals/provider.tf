terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version= "6.33.0"
      }
    }
   backend "s3" {
   bucket = "terraformbackend-p"
   key = "local.state.tfstate"
   region = us-east-1
   encrypt      = true
   use_lockefile = true 
   }

}

provider "aws" {
    region = "us-east-1"
  
}
