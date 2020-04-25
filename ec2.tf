resource "aws_instance" "example" {
 ami		= "ami-0323c3dd2da7fb37d"
 instance_type	= "t2.micro"
 security_groups    = ["mysecgrp"]
 key_name           = "myvision"
  tags = {
    Name            = "terra"
  }
}
