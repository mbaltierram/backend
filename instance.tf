terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-2"
    access_key =  AWS_ACCESS_KEY_ID
    secret_key =  AWS_SECRET_ACCESS_KEY

}


resource "aws_instance" "hello-instance" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
    tags = {
        Name = "hello-instance"
    }
}
