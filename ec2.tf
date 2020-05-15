#creating an instance to host a  webserver running on http  

resource "aws_instance" "example" {
 	ami		= "ami-0323c3dd2da7fb37d"
 	count= 1
 	instance_type	= "t2.micro"
 	security_groups    = ["mysecgrp"]
 	key_name           = "myvision"
 	user_data = <<-EOF
		#! /bin/bash
		sudo yum install httpd -y
	 	sudo systemctl start httpd
	 	sudo systemctl enable httpd
	 	#echo "<hi>Sample Creating Webserver Using Terraform<br>myvision</hi>" >> /var/www/html/index.html
 
	EOF

  tags = {
   	  Name = "webserver"
    }
}
