variable "image_version" {
  type        = string
  description = "Pr number or release version number."
}

variable "image_type" {
  type        = list(string)
  default     = ["PRIVATE_IMAGE"]
  description = "A list of the image type to be queried. Valid values: 'PUBLIC_IMAGE', 'PRIVATE_IMAGE', 'SHARED_IMAGE', 'MARKET_IMAGE'."
}