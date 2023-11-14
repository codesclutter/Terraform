
provider "aws" {
    access_key = "AKIA3CIYKEMGB6GWZDWB"
    secret_key = "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"
    region = "us-east-1"
  
}


resource "aws_instance" "kshitij" {
    ami = "ami-05a5f6298acdb05b6"
    instance_type = "t2.micro"
  
}

output "myoutput" {
    value = aws_instance.kshitij.public_ip
}
