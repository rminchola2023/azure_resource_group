output "vnet_mitocode_id" {
  description = "(Optional) The virtual NetworkConfiguration ID."
  value       = azurerm_virtual_network.vnet_mitocode.id
}

output "vnet_mitocode_name" {
  description = "(Required) The virtual NetworkConfiguration name."
  value       = azurerm_virtual_network.vnet_mitocode.name
}

output "vnet_mitocode_address_space" {
  description = "(Required) The virtual NetworkConfiguration address space."
  value       = azurerm_virtual_network.vnet_mitocode.address_space
}

output "public_subnet_01_name" {
  description = "(Required) The name of the public subnet 01."
  value       = azurerm_subnet.public_subnet_01.name
}

output "public_subnet_01_address_prefixes" {
  description = "(Required) The address prefixes of the public subnet 01."
  value       = azurerm_subnet.public_subnet_01.address_prefixes
}

output "private_subnet_01_name" {
  description = "(Required) The name of the private subnet 01."
  value       = azurerm_subnet.private_subnet_01.name
}

output "private_subnet_01_address_prefixes" {
  description = "(Required) The address prefixes of the private subnet 01."
  value       = azurerm_subnet.private_subnet_01.address_prefixes
}

output "private_subnet_02_name" {
  description = "(Required) The name of the private subnet 02."
  value       = azurerm_subnet.private_subnet_02.name
}

output "private_subnet_02_address_prefixes" {
  description = "(Required) The address prefixes of the private subnet 02."
  value       = azurerm_subnet.private_subnet_02.address_prefixes
}

output "private_subnet_03_name" {
  description = "(Required) The name of the private subnet 03."
  value       = azurerm_subnet.private_subnet_03.name
}

output "private_subnet_03_address_prefixes" {
  description = "(Required) The address prefixes of the private subnet 03."
  value       = azurerm_subnet.private_subnet_03.address_prefixes
}

output "nat_mitocode_name" {
  description = "(Required) The name of the NAT Gateway."
  value       = azurerm_nat_gateway.nat_mitocode.name
}

output "public_route_table_name" {
  description = "(Required) The Public Route Table name"
  value       = azurerm_route_table.public_route_table.name
}

output "private_route_table_name" {
  description = "(Required) The Private Route Table name"
  value       = azurerm_route_table.private_route_table.name
}