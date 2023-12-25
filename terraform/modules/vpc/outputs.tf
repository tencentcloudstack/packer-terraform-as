output "vpc_id" {
  value       = tencentcloud_vpc.vpc.id
  description = "vpc Id"
}

output "subnet_id" {
  value       = tencentcloud_subnet.subnet.id
  description = "subnet Id"
}