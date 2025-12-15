resource "aws_lb" "app_lb" {
  name               = "cloud-harbour-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [
    aws_subnet.subnet_az1.id,
    aws_subnet.subnet_az2.id
  ]
}
