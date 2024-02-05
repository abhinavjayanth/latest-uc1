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
sql_server-name = "vijay11"
sql_server-version = "12.0"
sql_server-administrator_login = "vijay11"
sql_server-administrator_login_password = "Jayanth@123456789"
sql_database-name = "vijay11"
loganalyticsws-name = "loganalytics-workspace"
datafactory-name = "logstoragedf1"

key_vault_name   = "varkeyvaultabhinav004"
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
 secret1_value  = "ffc9b97f-9c0f-49bf-b949-bb69e4b139cd" 
 secret2_name   = "clientsecret"
 secret2_value  = "lT08Q~XQjcloS5nh3KQWL2o0NzlMqA4cDvYG0cCI"
 secret3_name = "tenantID"
 secret3_value  = "750f2040-ab7f-42ed-8001-36ba05e30750"
 secret4_name   = "subscriptionID"
 secret4_value = "a1085f45-3c41-4277-b3a7-cd100aaffb99"
 object_id = "6edb3606-ffe3-40f8-a51d-cc12d0065948"




