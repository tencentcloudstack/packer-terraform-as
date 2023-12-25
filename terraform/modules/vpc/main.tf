resource "tencentcloud_vpc" "vpc" {
  name       = var.vpc_name
  cidr_block = var.vpc_cidr_block
}

resource "tencentcloud_subnet" "subnet" {
  vpc_id            = tencentcloud_vpc.vpc.id
  name              = var.subnet_name
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone
}