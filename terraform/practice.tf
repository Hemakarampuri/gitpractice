provider "AWS" {
region = "us-east-2"
}

provider "Azure" {
region = "Mumbai"
}

resource "aws_instance" "fromtf" {
ami = "ami-03f65b8614a860c29"
tags = {
Name = "from terraform"
}
keyname = "my_newkeys"
instance_type = "t2.micro"
security_groups = {
Name = "launch_wizard_7"
}
}