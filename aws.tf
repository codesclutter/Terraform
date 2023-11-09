provider "aws" {
    access_key = "abc"
    secret_key = "xyz"
    region = "us-east-1"
  
}


resource "aws_instance" "os1" {
    ami = "ami-05a5f6298acdb05b6"
    instance_type = "t2.micro"
  
}
