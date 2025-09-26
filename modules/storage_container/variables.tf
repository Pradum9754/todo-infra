# resource "azurerm_storage_container" "con" {
#     for_each = var.contodo
#   name                  = each.value.name
#   storage_account_id    = each.value.storage_account_id
#   container_access_type = each.value.container_access_type
# }

resource "azurerm_storage_container" "con" {
    for_each = var.contodo
  name                  = each.value.name
  storage_account_name  = each.value.storage_account_name  
  container_access_type = "private"
#   container_access_type = each.value.container_access_type
}