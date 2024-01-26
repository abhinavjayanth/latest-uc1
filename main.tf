terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}
module "contos" {
    source = "./contos"
    managementgroup = var.managementgroup
    
}
module "decom" {
    source = "./contos/decom"
    childgroupA0 =var.childgroupA0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
}
module "platform" {
    source = "./contos/platform"
    childgroupB0 = var.childgroupB0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "connectivity" {
    source = "./contos/platform/connectivity"
    childgroupB1 = var.childgroupB1
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "identity" {
    source = "./contos/platform/identity"
    childgroupB3 = var.childgroupB3
    childgroupB0-ID = module.platform.childgroupB0-ID
}
module "management" {
    source = "./contos/platform/management"
    childgroupB2 = var.childgroupB2
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "sandbox" {
    source = "./contos/sandbox"
    childgroupC0 = var.childgroupC0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "workloads" {
    source = "./contos/workloads"
    childgroupD0 = var.childgroupD0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "businessunit1" {
    source = "./contos/workloads/bs1"
    childgroupD1 = var.childgroupD1
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}
module "businessunit2" {
    source = "./contos/workloads/bs2"
    childgroupD2 = var.childgroupD2
    childgroupD0-ID = module.workloads.childgroupD0-ID
}

module "resourcegroup" {
  source = "./contos/platform/connectivity/resourcegroup"
  name = var.name
  location = var.location
}

module "virtualnetwork" {
    source = "./contos/platform/connectivity/Networking/VNET"
    vnet-name  = var.vnet-name
    location = module.resourcegroup.location
    name = module.resourcegroup.name
    vnet-address-space  = var.vnet-address-space
    vnet-subnet-name= var.vnet-subnet-name
    vnet-subnet-address-prefix = var.vnet-subnet-address-prefix
}

module "storage" {
  source = "./contos/platform/connectivity/storage/BLOB-STORAGE"
  name = module.resourcegroup.name
  location = module.resourcegroup.location
  storage-name = var.storage-name
  storage-account_tier = var.storage-account_tier
  storage-account_replication_type = var.storage-account_replication_type
  blob-container-name = var.blob-container-name
  container-access-type = var.container-access-type
}

module "database" {
  source = "./contos/platform/connectivity/storage/SQL"
  name = module.resourcegroup.name
  location = module.resourcegroup.location
  sql_server-name = var.sql_server-name
  sql_server-version = var.sql_server-version
  sql_server-administrator_login = var.sql_server-administrator_login
  sql_server-administrator_login_password = var.sql_server-administrator_login_password
  sql_database-name = var.sql_database-name
}

module "loganalyticsws" {
source = "./contos/platform/connectivity/storage/LOGANALYTICSWORKSPACE"
loganalyticsws-name = var.loganalyticsws-name
name = module.resourcegroup.name
location = module.resourcegroup.location
}

module "datafactory" {
  source = "./contos/platform/connectivity/storage/DATAFACTORY"
  datafactory-name = var.datafactory-name  
  name = module.resourcegroup.name
  location = module.resourcegroup.location
}

module "Security" {

  source = "./contos/platform/connectivity/security"

  resource-group-name                   = module.resourcegroup.name
  location                              = module.resourcegroup.location
  key_vault_name                        = var.key_vault_name
  soft_delete_retention_days            = var.soft_delete_retention_days
  purge_protection_enabled              = var.purge_protection_enabled
  sku_name                              = var.sku_name
  key_permissions                       = var.key_permissions
  secret_permissions                    = var.secret_permissions
  storage_permissions                   = var.storage_permissions
  secret1_name                          = var.secret1_name
  secret1_value                         = var.secret1_value
  secret2_name                          = var.secret2_name
  secret2_value                         = var.secret2_value
  secret3_name                          = var.secret3_name
  secret3_value                         = var.secret3_value
  secret4_name                          = var.secret4_name
  secret4_value                         = var.secret4_value
  object_id                             = var.object_id 
  depends_on                            = [module.resourcegroup]
}



