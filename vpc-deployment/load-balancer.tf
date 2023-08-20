resource "aws_alb" "app_alb" {
   name = "App-Alb"
   load_balancer_type = "application"
   security_groups = [aws_security_group.alb_sg.id ]
   subnets =  module.vpc-module.public_subnets_id
}

resource "aws_lb_listener" "" {
  
}