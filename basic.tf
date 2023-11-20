
provider "aws" {
    access_key = "AjfhbubufKIA3"
    secret_key = "kibufbf5Le"
    region = "us-east-1"
  
}


resource "aws_instance" "kshitij" {
    ami = "ami-05a5f6298acdb05b6"
    instance_type = "t2.micro"
  
}

output "myoutput" {
    value = aws_instance.kshitij.public_ip
}
