#################################################################################################################################
##############################                      Networking                           ########################################
#################################################################################################################################
resource "azurerm_virtual_network" "vnet_mitocode" {
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers
  tags                = var.tags
}

resource "azurerm_subnet" "public_subnet_01" {
  name                 = var.public_subnet_name_01
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet_mitocode.name
  address_prefixes     = var.public_subnet_address_prefixes_01
}

resource "azurerm_subnet_network_security_group_association" "sg_mitocode_public_subnet_01_association" {
  subnet_id                   = azurerm_subnet.public_subnet_01.id
  network_security_group_id   = var.sg_azure_public_subnet_01
}

resource "azurerm_subnet" "private_subnet_01" {
  name                 = var.private_subnet_name_01
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet_mitocode.name
  address_prefixes     = var.private_subnet_address_prefixes_01
}


resource "azurerm_subnet" "private_subnet_02" {
  name                 = var.private_subnet_name_02
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet_mitocode.name
  address_prefixes     = var.private_subnet_address_prefixes_02
}

resource "azurerm_subnet" "private_subnet_03" {
  name                 = var.private_subnet_name_03
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet_mitocode.name
  address_prefixes     = var.private_subnet_address_prefixes_03
}

resource "azurerm_nat_gateway" "nat_mitocode" {
  name                    = var.nat_name
  location                = var.rg_location
  resource_group_name     = var.rg_name
  sku_name                = var.nat_sku
  tags                    = var.tags
}

resource "azurerm_nat_gateway_public_ip_association" "nat_gateway_association_public_ip" {
  nat_gateway_id       = azurerm_nat_gateway.nat_mitocode.id
  public_ip_address_id = var.nat_gateway_association_public_ip_address_id
}

resource "azurerm_subnet_nat_gateway_association" "nat_gateway_association_public_subnet" {
  subnet_id      = azurerm_subnet.public_subnet_01.id
  nat_gateway_id = azurerm_nat_gateway.nat_mitocode.id
}

resource "azurerm_route_table" "public_route_table" {
  name                = var.public_route_table_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  route {
    name              = var.public_route_table_route_name
    address_prefix    = var.public_route_table_route_public_ip_prefix
    next_hop_type     = var.public_route_table_route_next_hop_type
  }
  tags                =  var.tags
}

resource "azurerm_subnet_route_table_association" "rt_association_public_subnet_01" {
  subnet_id      = azurerm_subnet.public_subnet_01.id
  route_table_id = azurerm_route_table.public_route_table.id
}

resource "azurerm_subnet_route_table_association" "rt_association_private_subnet_01" {
  subnet_id      = azurerm_subnet.private_subnet_01.id
  route_table_id = azurerm_route_table.public_route_table.id
}

resource "azurerm_route_table" "private_route_table" {
  name                = var.private_route_table_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  tags                = var.tags
}

resource "azurerm_subnet_route_table_association" "rt_association_private_subnet_02" {
  subnet_id      = azurerm_subnet.private_subnet_02.id
  route_table_id = azurerm_route_table.private_route_table.id
}

resource "azurerm_subnet_route_table_association" "rt_association_private_subnet_03" {
  subnet_id      = azurerm_subnet.private_subnet_03.id
  route_table_id = azurerm_route_table.private_route_table.id
  lifecycle {
    prevent_destroy = false
  }
}
