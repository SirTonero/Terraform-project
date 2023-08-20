resource "aws_alb" "app_alb" {
   name = "App-Alb"
   load_balancer_type = "application"
   security_groups = [aws_security_group.alb_sg.id ]
   subnets =  module.vpc-module.public_subnets_id
}

#
resource "aws_alb_target_group" "todo-app-tg" {
   name = "Todo-App-tg"
   port = 80
   protocol = "HTTP"
   target_type = "ip"
   vpc_id = module.vpc-module.vpc_id

}