resource "tencentcloud_clb_instance" "clb_internal" {
  address_ip_version           = "ipv4"
  clb_name                     = var.clb_name
  internet_bandwidth_max_out   = 5
  internet_charge_type         = "TRAFFIC_POSTPAID_BY_HOUR"
  load_balancer_pass_to_target = true
  network_type                 = "OPEN"
  project_id                   = 0
  target_region_info_region    = var.region
  target_region_info_vpc_id    = var.vpc_id
  vpc_id                       = var.vpc_id
}

resource "tencentcloud_clb_listener" "clb_listener" {
  clb_id                     = tencentcloud_clb_instance.clb_internal.id
  health_check_health_num    = 3
  health_check_interval_time = 5
  health_check_switch        = true
  health_check_time_out      = 2
  health_check_type          = "TCP"
  health_check_unhealth_num  = 3
  listener_name              = var.listener_name
  port                       = 80
  protocol                   = "TCP"
  scheduler                  = "WRR"
  #  sni_switch                 = false
  target_type = "NODE"
}