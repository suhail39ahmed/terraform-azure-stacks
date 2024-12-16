module "network" {
  source      = "../../modules/network"
  cidr_block  = var.dev_cidr_block
}

module "compute" {
  source        = "../../modules/compute"
  instance_type = var.dev_instance_type
}