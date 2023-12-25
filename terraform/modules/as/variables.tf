variable "config_name" {
  type        = string
  default     = "tf-as-configuration"
  description = "configuration name."
}

variable "image_id" {
  type        = string
  description = "image id."
}

variable "instance_types" {
  type        = list(string)
  default     = ["SA2.MEDIUM2"]
  description = "instance types."
}

variable "system_disk_type" {
  type        = string
  default     = "CLOUD_PREMIUM"
  description = "system disk type."
}

variable "system_disk_size" {
  type        = number
  default     = 50
  description = "system disk size."
}

variable "data_disk_type" {
  type        = string
  default     = "CLOUD_PREMIUM"
  description = "data disk type."
}

variable "data_disk_size" {
  type        = number
  default     = 50
  description = "data disk size."
}

variable "is_delete_with_instance" {
  type        = bool
  default     = true
  description = "Is delete with instance, Default is `true`."
}

variable "internet_max_bandwidth_out" {
  type        = number
  default     = 10
  description = "Max bandwidth of Internet access in Mbps. Default is `10`."
}

variable "public_ip_assigned" {
  type        = bool
  default     = false
  description = "public ip assigned."
}

variable "password" {
  type        = string
  default     = "Test#123456"
  description = "as config password."
}

variable "enhanced_security_service" {
  type        = bool
  default     = false
  description = "enhanced security service."
}

variable "enhanced_monitor_service" {
  type        = bool
  default     = false
  description = "enhanced monitor service."
}

variable "user_data" {
  type        = string
  default     = "test"
  description = "user data."
}

variable "tags" {
  type = map(string)
  default = {
    "created" : "packer+terraform+as",
  }
  description = "A mapping of tags to assign to the cvm."
}

variable "vpc_id" {
  type        = string
  description = "vpc Id."
}

variable "subnet_id" {
  type        = string
  description = "subnet Id."
}

variable "desired_capacity" {
  type        = number
  default     = 1
  description = "desired capacity."
}

variable "min_size" {
  type        = number
  default     = 1
  description = "min size."
}

variable "max_size" {
  type        = number
  default     = 5
  description = "max size."
}

variable "clb_internal_id" {
  type        = string
  description = "clb internal Id."
}

variable "clb_listener_id" {
  type        = string
  description = "clb listener id."
}

variable "clb_listener_port" {
  type        = number
  default     = 80
  description = "clb listener port."
}

variable "clb_listener_weight" {
  type        = number
  default     = 10
  description = "clb listener weight."
}