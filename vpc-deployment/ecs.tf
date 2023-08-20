resource "aws_ecs_task_definition" "frontend-aws_ecs_task_definition" {
   family = "frontend-todo-list-app"
   network_mode = "awsvpc"
   requires_compatibilities = ["FARGATE"]
   cpu = 1024
   memory = 1024

   container_definitions = <<DEFINITION
   [
      "image": "427522674412.dkr.ecr.us-east-1.amazonaws.com/frontend-react"
      "healthCheck": {
         "command": [
            "CMD-SHELL",
            "curl -f http://localhost:3000 || exit 1"
         ],
         "interval": 30,
         "timeout": 5,
         "retries": 3
   ]
   DEFINITION 
}