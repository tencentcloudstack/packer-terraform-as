resource "tencentcloud_as_scaling_config" "launch_configuration" {
  configuration_name = var.config_name
  image_id           = var.image_id
  instance_types     = var.instance_types
  project_id         = 0
  system_disk_type   = var.system_disk_type
  system_disk_size   = var.system_disk_size

  data_disk {
    disk_type            = var.data_disk_type
    disk_size            = var.data_disk_size
    delete_with_instance = var.is_delete_with_instance
  }

  internet_charge_type       = "TRAFFIC_POSTPAID_BY_HOUR"
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  public_ip_assigned         = var.public_ip_assigned
  password                   = var.password
  enhanced_security_service  = var.enhanced_security_service
  enhanced_monitor_service   = var.enhanced_monitor_service
  user_data                  = var.user_data

  instance_tags = var.tags
}

resource "tencentcloud_as_scaling_group" "scaling_group" {
  scaling_group_name   = "tf-as-scaling-group"
  configuration_id     = tencentcloud_as_scaling_config.launch_configuration.id
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_id               = var.vpc_id
  subnet_ids           = [var.subnet_id]
  project_id           = 0
  default_cooldown     = 400
  desired_capacity     = var.desired_capacity
  termination_policies = ["OLDEST_INSTANCE"]
  retry_policy         = "INCREMENTAL_INTERVALS"

  forward_balancer_ids {
    load_balancer_id = var.clb_internal_id
    listener_id      = var.clb_listener_id
    target_attribute {
      port   = var.clb_listener_port
      weight = var.clb_listener_weight
    }
  }

  tags = var.tags
}
