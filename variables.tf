variable "managementgroup" {
  type = string
  
}
variable "childgroupA0" { 
  type = string
  
}
variable "childgroupB0" { 
  type = string
  
}
variable "childgroupB1" { 
  type = string
  
}
variable "childgroupB3" { 
  type = string
  
}
variable "childgroupB2" { 
  type = string
  
}
variable "childgroupC0" { 
  type = string
  
}
variable "childgroupD0" { 
  type = string
  
}
variable "childgroupD1" { 
  type = string

}
variable "childgroupD2" { 
  type = string
  
}

variable "name" {
  type = string
  description = "name of the resource group."
}

variable "location" {
  type = string
  description = "location of the resource group."  
}

variable  "vnet-name" {
  type = string
  description = "name of the virtual network." 
}

variable  "vnet-address-space"  {
  type = list(string)
  description = " address space of the virtual network."
}

variable  "vnet-subnet-name"  {
  type = string
  description = "name of the subnet."
}

variable  "vnet-subnet-address-prefix"  {
  type = string
  description = "address space of the subnet."
}

variable  "storage-name"  {
  type = string
  description = "name of the storage account"
}

variable  "storage-account_tier"  {
  type = string
  description = "type of the storage account tier"
}

variable  "storage-account_replication_type"  {
  type = string
  description = "storage account replication type"
}

variable "blob-container-name" {
  type = string
  description ="name of the blob"
}

variable "container-access-type" {
  type = string
  description = "access type of container"
}

variable "sql_server-name" {
  type = string
  description = "name of the sql server"
}

variable "sql_server-version" {
  type = string
  description = "version of the sql server"
}

variable "sql_server-administrator_login" {
  type = string
  description = "name of the sql server admin"
}

variable "sql_server-administrator_login_password" {
  type = string
  description = "password  of the sql server admin"
}

variable "sql_database-name" {
  type = string
  description = "name of the sql database"
}

variable "loganalyticsws-name" {
  type = string
  description = "name of the log analytics workspace"
}

variable "datafactory-name" {
  type = string
  description = "name of the datafactory"
}  

variable "key_vault_name" {

    description = "name of your keyvault"

    type = string

}



variable "soft_delete_retention_days" {

    description = "soft delete retention days"

    type = number

}


variable "purge_protection_enabled" {

    description = "enabled"

    type = bool

}

variable "sku_name" {

    description = "name of your sku"

    type = string

}

variable "key_permissions" {

    description = "key permissions"

    type = list(string)

}

variable "secret_permissions" {

    description = "secret permissions"

    type = list(string)

}

variable "storage_permissions" {

    description = "storage permissions"

    type = list(string)

}


variable "secret1_name" {

    description = "secret1_name"

    type = string

}

variable "secret1_value" {

    description = "secret1_value"

    type = string

}

variable "secret2_name" {

    description = "secret2_name"

    type = string

}

variable "secret2_value" {

    description = "secret2_value"

    type = string

}

variable "secret3_name" {

    description = "secret3_name"

    type = string

}

variable "secret3_value" {

    description = "secret3_value"

    type = string

}

variable "secret4_name" {

    description = "secret4_name"

    type = string

}

variable "secret4_value" {

    description = "secret4_value"

    type = string

}

variable "object_id" {

    description = "object_id"

    type = string
  
}



