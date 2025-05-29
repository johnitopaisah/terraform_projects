module "network" {
  source             = "./modules/network"
  vpc_cidr           = "10.0.0.0/16"
  subnet_cidr        = "10.0.1.0/24"
  availability_zone  = "us-east-1a"
}

module "ec2" {
  source    = "./modules/ec2"
  vpc_id    = module.network.vpc_id
  subnet_id = module.network.subnet_id
  key_name  = module.key_pair.key_name
}

module "iam" {
  source = "./modules/iam"
}

module "static_website" {
  source = "./modules/static_website"
}

module "key_pair" {
  source = "./modules/key_pair" 
  key_name = "ec2_ssh_key_pair"
}
