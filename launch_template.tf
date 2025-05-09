resource "aws_launch_template" "mylt" {
name = "terraform-lt"
description = "v1"
image_id = "ami-0ddc798b3f1a5117e"
instance_type = "t2.micro"
key_name = "key-pair"
vpc_security_group_ids = [aws_security_group.mysg.id]
placement {
availability_zone = "us-east-1a"
}
