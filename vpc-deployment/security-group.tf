resource "aws_security_group" "alb_sg" {
  name   = "ALB-security-group"
  vpc_id = module.vpc-module.vpc_id

  ingress {
    protocol    = "tcp"
    to_port     = 80
    from_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}