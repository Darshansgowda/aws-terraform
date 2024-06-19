resource "aws_ecs_cluster" "ecs-cluster" {
  name = "aws-ecs"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

