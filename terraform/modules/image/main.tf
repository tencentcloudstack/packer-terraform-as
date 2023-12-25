data "tencentcloud_images" "image" {
  image_type       = var.image_type
  image_name_regex = "^Packer-terraform-as-${var.image_version}"
}