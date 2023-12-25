module "cvm_image" {
  source        = "./modules/image"
  image_version = var.image_version
}

module "vpc" {
  source            = "./modules/vpc"
  availability_zone = var.availability_zone
}

module "clb" {
  source = "./modules/clb"
  vpc_id = module.vpc.vpc_id
}

module "as_scaling" {
  source          = "./modules/as"
  clb_internal_id = module.clb.clb_instance_id
  clb_listener_id = module.clb.clb_listener_id
  image_id        = module.cvm_image.image_id
  vpc_id          = module.vpc.vpc_id
  subnet_id       = module.vpc.subnet_id
}

output "public_network_ip" {
  value = module.clb.ip
}