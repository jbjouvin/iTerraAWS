provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

# resource "aws_instance" "example" {
#   ami           = "${var.ami}"
#   instance_type = "t2.micro"
# }

# resource "aws_eip" "ip" {
#   instance = "${aws_instance.example.id}"
# }

module "consul" {
  source = "github.com/hashicorp/consul/terraform/aws"

  key_name = "jbjouvin-key-pair-useast1"
  key_path = "C://Users//JB//jbjouvin-key-pair-useast1.pem"
  region   = "${var.region}"
  servers  = "3"
}