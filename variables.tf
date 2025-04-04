variable "aws_region" {
  default = "us-east-1"
}

variable "execution_role_arn" {}
variable "ecr_image_url" {}
variable "subnets" {
  type = list(string)
}

variable "security_group" {}
