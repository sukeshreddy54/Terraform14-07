resource "aws_instance" "web-1" {
    count = 3
   #ami = var.imagename
   ami = "ami-0747bdcabd34c712a"
   #ami = "${data.aws_ami.my_ami.id}"
   instance_type = "t2.micro"
   key_name = "awswebservice"
   subnet_id = "${element(aws_subnet.public-subnets.*.id, count.index)}"
   vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
   associate_public_ip_address = true	
   tags = {
       Name = "Server-${count.index+1}"
       Env = "Prod"
       Owner = "suke"
	CostCenter = "ABCD"
   }
}


LOOKUP Function
#resource "aws_instance" "web-1" {
#    count = 3
#   ami = "${lookup(var.amis,var.region)}"
#   instance_type = "t2.micro"
#   key_name = "awswebservice"
#   subnet_id = "${element(aws_subnet.public-subnets.*.id, count.index)}"
#   vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
#   associate_public_ip_address = true	
#   tags = {
#       Name = "Server-${count.index+1}"
#       Env = "Prod"
#       Owner = "suke"
#	CostCenter = "ABCD"
#   }
#}
