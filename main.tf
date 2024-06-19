provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
  ami           = "ami-05fa00d4c63e32376" # us-west-2
  instance_type = "t2.micro"
  tags = {
      Name = "TF-Instance"
  }
}

resource "aws_ecs_cluster" "ecs-cluster" {
  name = "aws-ecs"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_kms_key" "kms-key" {
  description             = "key"
  deletion_window_in_days = 7
}

resource "aws_ecs_cluster" "aws-ecs" {
  name = "aws-ecs-cluster"

}