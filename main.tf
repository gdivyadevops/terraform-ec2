provider "aws" {
access_key = "${var.aws_access_key}"
secret_key = "${var.aws_secret_key}"
region     = "${var.region}"
}

resource "aws_instance" "web-server" {
ami           = "ami-008b85aa3ff5c1b02"
instance_type = "t2.micro"

  tags {
    Name = "terraform-jenkins12"
  }
}
