variable "vpc_id" {
  type        = string
  description = "VPC Id"
}
variable "cidr_block" {
  type        = string
  description = "cidr block"
  default     = "10.0.0.0/16"
}
variable "ami_id" {
  type        = string
  description = "AMI to be used for creating instance"
}
variable "instance_type" {
  type        = string
  description = "Instance type"
}
variable "key_name" {
  type        = string
  description = "Keypair for connecting EC2"
}
variable "webserver_name" {
  type        = string
  description = "Name of the webserver"
}
variable "alarm_name" {
  type        = string
  description = "Name of the alarm"
}
variable "comparison_operator" {
  type        = string
  description = "Mention the comparison operator"
}
variable "evaluation_periods" {
  type        = number
  description = "evaluation periods"
}
variable "metric_name" {
  type        = string
  description = "Metric Name"
}
variable "namespace" {
  type        = string
  description = "Mention the namespace"
}
variable "period" {
  type        = number
  description = "Period to monitor"
}
variable "statistic" {
  type        = string
  description = "Statistic used"
}
variable "threshold" {
  type        = number
  description = "Alarm threshold"
}

