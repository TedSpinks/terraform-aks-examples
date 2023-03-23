module "azure_aks_self_contained_test1" {
  source                            = "./modules/azure_aks_self_contained"
  cluster_name                      = "ted-test-aks-1"
  location                          = "westus2"
  ssh_public_key                    = var.ssh_public_key
  user_node_pool_count              = 1
  network_plugin                    = "kubenet"
  tags                              = var.tags
  sku_tier                          = "Free"
  azure_rbac_admin_group_object_ids = ["5390308c-2651-44e7-b10b-42887107a3c8"]
  # azure_rbac_reader_group_object_ids = ["5390308c-2651-44e7-b10b-42887107a3c8"]
}

module "azure_aks_self_contained_test2" {
  count                    = 0
  source                   = "./modules/azure_aks_self_contained"
  cluster_name             = "ted-test-aks-2"
  location                 = "westus2"
  ssh_public_key           = var.ssh_public_key
  user_node_pool_count     = 1
  system_node_pool_vm_size = "Standard_D2_v3"
  user_node_pool_vm_size   = "Standard_D2_v3"
  tags                     = var.tags
  sku_tier                 = "Free"
}
