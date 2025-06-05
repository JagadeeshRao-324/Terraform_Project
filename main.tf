module "aks_cluster" {
  source      = "./modules/AKS_cluster"
  rgname      = var.rgname
  location    = var.location
  vnetname    = var.vnetname
  subnetname  = var.subnetname
  addr_space  = var.addr_space
  addr_prefix = var.addr_prefix
  aksname     = var.aksname
}
