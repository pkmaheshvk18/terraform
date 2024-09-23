main.tf
provide "aws" {
region = "us-east-1"
}
resource "aws_instance" "example" {
ami = "var.ami_id_value"
instance_type = "var.instance_type_value"
subent_id = "var."subnet_id_value"
}
varible.tf
#varibles 
varible "ami_id_value"{
description = "ami for the instance"
}
varible "instance_type_value" {
description = "instnce_type"
}
varible "subnet_id_value" {
description = "subent_id"
}
outputs.tf >> filename
#ouput
ouput "public_ip_value" {
value ="aws_instance.example.public-ip"
}
module/ec2_instances
#module
module "ec2_instances" {
source = "./module/ec2_instances"
ami_value = "ami-0e86e20dae9224db8" # replace this
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-0e74ed20c790d2b62" 
