# resource "azurerm_resource_group" "rg" {
#     count     = 5
#     name      = "hello"
#     location  = "westus" 
# }

#ans - this will create 5 rgs with same hello

#####################################################################################################

# resource "azurerm_resource_group" "rg" {
#     count     = 5
#     name      = count.index
#     location  = "westus"
# }

#ans - this will create 5 rgs with names 0,1,2,3,4

######################################################################################################

# resource "azurerm_resource_group" "rg" {
#     count     = 5
#     name      = "rg-tony-${count.index+1}"
#     location  = "westus"
# }

#ans - this will create 5 rgs with names rgtony-1, rgtony-2, rgtony-3, rgtony-4, rgtony-5

######################################################################################################

variable "create-rg" {
    type = bool
}

resource "azurerm_resource_group" "rg" {
    #count = conditon ? trueval : falseval
    count = var.create-rg ? 1 : 0
    count     = 1
    name      = "rg-tony-${count.index+1}"
    location  = "westus"
}