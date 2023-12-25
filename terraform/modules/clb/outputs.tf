output "clb_instance_id" {
  value       = tencentcloud_clb_instance.clb_internal.id
  description = "clb instance Id"
}

output "clb_listener_id" {
  value       = tencentcloud_clb_listener.clb_listener.listener_id
  description = "clb listener Id"
}

output "ip" {
  value       = tencentcloud_clb_instance.clb_internal.clb_vips
  description = "The virtual service address table of the CLB."
}