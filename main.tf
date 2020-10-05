 module "base" {
  source  = "./modules/base"
  production    = var.live
}
 
module "green" {
  source      = "./modules/autoscaling"
  app_version = "v1.0"
  //label       = "green"
  group       =  "green"
  base        = module.base
}
 
module "blue" {
  source      = "./modules/autoscaling"
  app_version = "v2.0"
  //label       = "blue"
  group       = "blue"
  base        = module.base
}
 
