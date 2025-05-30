module "AKS_cluster" {
source = "./modules/AKS_cluster"
rgname = "aks-rg"
location = "Central India"
vnetname = "vnet1"
subnetname = "subnet1"
addr_space = ["10.0.0.0/8"]
addr_prefix = ["10.240.0.0/16"]
aksname = "cluster1"
}
