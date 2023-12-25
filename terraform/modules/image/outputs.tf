output "image_id" {
  value       = data.tencentcloud_images.image.images[0].image_id
  description = "image Id"
}