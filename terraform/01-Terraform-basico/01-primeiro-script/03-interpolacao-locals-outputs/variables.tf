variable "environment" {
  type        = string
  description = "homolog"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "awsdiego"
}

variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}