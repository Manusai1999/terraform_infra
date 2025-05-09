resource "aws_elb" "web_server_lb"{
name = "web-server-lb"
security_groups = [aws_security_group.web_server.id]
subnets = [aws_subnet.mysubnet1.id,aws_subnet.mysubnet2.id]
listener {
instance_port     = 8000
instance_protocol = "http"
lb_port           = 80
lb_protocol       = "http"
}
tags = {
Name = "terraform-elb"
}
}
