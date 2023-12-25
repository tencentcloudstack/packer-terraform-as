terraform {
  required_providers {
    tencentcloud = {
      source = "tencentcloudstack/tencentcloud"
    }
  }
}

terraform {
  backend "cos" {
    region = "ap-guangzhou"
    bucket = "packer-terraform-as-1253833068"
    prefix = "terraform/state"
  }
}


provider "tencentcloud" {
  region = var.region
}
