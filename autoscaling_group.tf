resource "aws_autoscaling_group" "myasg" {
name = "terraform-asg"
min_size = 2
max_size = 6
desired_capacity = 2
health_check_type = "EC2"
load_balancers = [aws_elb.myelb.name]
vpc_zone_identifier = [aws_subnet.mysubnet1.id,aws_subnet.mysubnet2.id]
launch_template {
id = aws_launch_template.mylt.id
}
}
