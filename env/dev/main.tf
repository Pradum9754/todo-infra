module "todorg2" {
  source = "../../modules/resource_group"
  rgtodo = var.prtodorg
}

module "todostg2" {
  source     = "../../modules/storage_account"
  stgtodo    = var.prtodostg
  depends_on = [module.todorg2]
}

module "todocon2" {
  source     = "../../modules/storage_container"
  contodo    = var.prtodocon
  depends_on = [module.todostg2]
}

module "todovnet2" {
  source     = "../../modules/virtual_network"
  vnettodo   = var.prtodovnet
  depends_on = [module.todorg2]
}

module "todosub2" {
  source     = "../../modules/subnets"
  subtodo    = var.prtodosub
  depends_on = [module.todovnet2]
}