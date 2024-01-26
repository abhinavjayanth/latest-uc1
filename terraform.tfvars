managementgroup = "Contos"
childgroupA0    = "decom"
childgroupB0    = "platform"
childgroupB1    = "connectivity"
childgroupB3    = "identity"
childgroupB2    = "management"
childgroupC0    = "sandbox"
childgroupD0    = "workloads"
childgroupD1    = "bs1"
childgroupD2    = "bs2"
name ="rg"
location = "East US"
vnet-name = "VN1"
vnet-address-space = ["10.0.0.0/16"]
vnet-subnet-name = "Subnet1"
vnet-subnet-address-prefix = "10.0.0.0/24"
storage-name = "abhinavstrg1"
storage-account_tier = "Standard"
storage-account_replication_type = "GRS"
blob-container-name = "log-container"
container-access-type ="private"
sql_server-name = "databaseserver-abhi"
sql_server-version = "12.0"
sql_server-administrator_login = "databaseserver-abhi"
sql_server-administrator_login_password = "Jayanth@12345678"
sql_database-name = "database-abhi"
loganalyticsws-name = "loganalytics-workspace"
datafactory-name = "logstrg-df1"

key_vault_name   = "varkeyvaultabh003"
  soft_delete_retention_days    = 7
  purge_protection_enabled   = false
  sku_name    = "standard"
  key_permissions   =["Get",]
  secret_permissions  = [
      "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set",
    ]
  storage_permissions =  [
      "Get",
    ]

 secret1_name    = "clientID"
 secret1_value  = "45bf8396-bf7b-4703-96ad-be8ec15257e7"
 secret2_name   = "clientsecret"
 secret2_value  = "Oyn8Q~PL1qTip.DO_fMKRZ52th~Ma5SRg.70FcSn"
 secret3_name = "tenantID"
 secret3_value  = "cd3abfb4-bd8f-4ad0-8438-14879733eb2f"
 secret4_name   = "subscriptionID"
 secret4_value = "46b8e0ad-5178-4e00-b201-65f042c1d7ab"
 object_id = "d4d29539-f1e7-434a-9a52-e0c4485a8fc8"




