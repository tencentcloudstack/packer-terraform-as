variable "clb_name" {
  type        = string
  default     = "packer-jenkins"
  description = "clb name."
}

variable "region" {
  type        = string
  default     = "ap-guangzhou"
  description = "region."
}

variable "vpc_id" {
  type        = string
  description = "vpc Id."
}

variable "listener_name" {
  type        = string
  default     = "packer-jerkins-listener"
  description = "listener name."
}