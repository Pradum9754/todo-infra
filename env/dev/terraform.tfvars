prtodorg = {
  rg1 = {
    name     = "todorgprad2"
    location = "east us"
  }
}

prtodostg = {
  stg1 = {
    name                     = "todostprad2"
    resource_group_name      = "todorgprad2"
    location                 = "east us"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

prtodocon = {
  con1 = {
    name                 = "todoconprad2"
    resource_group_name  = "todorgprad2"
    storage_account_name = "todostprad2"
    account_access_type  = "Private"
  }
}

prtodovnet = {
  vnet1 = {
    name                = "todovnetprad2"
    location            = "east us"
    resource_group_name = "todorgprad2"
    address_space       = ["10.0.0.0/16"]
  }
}

prtodosub = {
  frontend_todo = {
    name                 = "frontend_todo1"
    resource_group_name  = "todorgprad2"
    virtual_network_name = "todovnetprad2"
    address_prefixes     = ["10.0.1.0/24"]
  }
}