provider "aws" {
  region = "us-west-2"
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
module "demo_webserver" {
  source              = "../TERRAFORM/modules"
  vpc_id              = aws_vpc.main.id
  cidr_block          = aws_vpc.main.cidr_block
  ami_id              = "ami-0ca285d4c2cda3300"
  instance_type       = "t2.micro"
  key_name            = "terraform-keypair"
  webserver_name      = "Demo"
  alarm_name          = "terraform-test-alarms"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"
}
output "aws_instance1" {
  value = module.demo_webserver.aws_instance
}