terraform {
  required_version = ">= 0.12"
}
resource "aws_subnet" "webserver" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
}
resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "${var.webserver_name} terraform"
  }
}
resource "aws_cloudwatch_metric_alarm" "testalarm" {
  alarm_name                = var.alarm_name
  comparison_operator       = var.comparison_operator
  evaluation_periods        = var.evaluation_periods
  metric_name               = var.metric_name
  namespace                 = var.namespace
  period                    = var.period
  statistic                 = var.statistic
  threshold                 = var.threshold
  insufficient_data_actions = []
}