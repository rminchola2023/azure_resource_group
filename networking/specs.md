## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

<h2>networking</h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_nat_gateway.nat_mitocode](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway) | resource |
| [azurerm_nat_gateway_public_ip_association.nat_gateway_association_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/nat_gateway_public_ip_association) | resource |
| [azurerm_route_table.private_route_table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |
| [azurerm_route_table.public_route_table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |
| [azurerm_subnet.private_subnet_01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.private_subnet_02](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.private_subnet_03](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.public_subnet_01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet_nat_gateway_association.nat_gateway_association_public_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_nat_gateway_association) | resource |
| [azurerm_subnet_network_security_group_association.sg_mitocode_public_subnet_01_association](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_route_table_association.rt_association_private_subnet_01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rt_association_private_subnet_02](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rt_association_private_subnet_03](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association) | resource |
| [azurerm_subnet_route_table_association.rt_association_public_subnet_01](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_route_table_association) | resource |
| [azurerm_virtual_network.vnet_mitocode](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nat_gateway_association_public_ip_address_id"></a> [nat\_gateway\_association\_public\_ip\_address\_id](#input\_nat\_gateway\_association\_public\_ip\_address\_id) | (Required) nat\_gateway\_association\_public\_ip\_address\_id is associate with module azure\_public\_ip | `string` | `""` | yes |
| <a name="input_nat_name"></a> [nat\_name](#input\_nat\_name) | (Required) Specifies the name of the NAT Gateway. Changing this forces a new resource to be created. | `string` | `""` | yes |
| <a name="input_nat_sku"></a> [nat\_sku](#input\_nat\_sku) | (Optional) The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard. | `string` | `""` | no |
| <a name="input_private_route_table_name"></a> [private\_route\_table\_name](#input\_private\_route\_table\_name) | (Required) The type of Azure hop the packet should be sent to. Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None. | `string` | `""` | yes |
| <a name="input_private_subnet_address_prefixes_01"></a> [private\_subnet\_address\_prefixes\_01](#input\_private\_subnet\_address\_prefixes\_01) | (Required) The address private prefixes to use for the subnet and it will be added to AKS | `list(string)` | `[]` | yes |
| <a name="input_private_subnet_address_prefixes_02"></a> [private\_subnet\_address\_prefixes\_02](#input\_private\_subnet\_address\_prefixes\_02) | (Required) The address private prefixes to use for the subnet and it will be added to Azure SQL | `list(string)` | `[]` | yes |
| <a name="input_private_subnet_address_prefixes_03"></a> [private\_subnet\_address\_prefixes\_03](#input\_private\_subnet\_address\_prefixes\_03) | (Required) The address private prefixes to use for the subnet and it will be added for any azure services | `list(string)` | `[]` | yes |
| <a name="input_private_subnet_name_01"></a> [private\_subnet\_name\_01](#input\_private\_subnet\_name\_01) | (Required) The name of the private subnet. Changing this forces a new resource to be created. | `string` | `""` | yes |
| <a name="input_private_subnet_name_02"></a> [private\_subnet\_name\_02](#input\_private\_subnet\_name\_02) | (Required) The name of the private subnet. Changing this forces a new resource to be created. | `string` | `""` | yes |
| <a name="input_private_subnet_name_03"></a> [private\_subnet\_name\_03](#input\_private\_subnet\_name\_03) | (Required) The name of the private subnet. Changing this forces a new resource to be created. | `string` | `""` | yes |
| <a name="input_public_route_table_name"></a> [public\_route\_table\_name](#input\_public\_route\_table\_name) | (Required) The name of the route table. Changing this forces a new resource to be created. | `string` | `""` | yes |
| <a name="input_public_route_table_route_name"></a> [public\_route\_table\_route\_name](#input\_public\_route\_table\_route\_name) | (Required) The name of the route. | `string` | `""` | yes |
| <a name="input_public_route_table_route_next_hop_type"></a> [public\_route\_table\_route\_next\_hop\_type](#input\_public\_route\_table\_route\_next\_hop\_type) | (Required) The destination to which the route applies. Can be CIDR (such as 10.1.0.0/16) or Azure Service Tag (such as ApiManagement, AzureBackup or AzureMonitor) format. | `string` | `""` | yes |
| <a name="input_public_route_table_route_public_ip_prefix"></a> [public\_route\_table\_route\_public\_ip\_prefix](#input\_public\_route\_table\_route\_public\_ip\_prefix) | public\_route\_table\_route\_public\_ip\_prefix is associate with module azure\_public\_ip | `string` | `""` | yes |
| <a name="input_public_subnet_address_prefixes_01"></a> [public\_subnet\_address\_prefixes\_01](#input\_public\_subnet\_address\_prefixes\_01) | (Required) The address public prefixes to use for the subnet and it will be added to Nat-gateway. | `list(string)` | `[]` | yes |
| <a name="input_public_subnet_name_01"></a> [public\_subnet\_name\_01](#input\_public\_subnet\_name\_01) | (Required) The name of the public subnet. Changing this forces a new resource to be created. | `string` | `""` | yes |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | (Required) Resource group location | `string` | `""` | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | (Required) Resource group name | `string` | `""` | yes |
| <a name="input_sg_azure_public_subnet_01"></a> [sg\_azure\_public\_subnet\_01](#input\_sg\_azure\_public\_subnet\_01) | (Optional) The Network Security Group to associate with the subnet. (Referenced by id, ie. azurerm\_network\_security\_group.example.id) | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags which should be assigned to the Azure services, the tag is important for the costs for environment | `map(any)` | `{}` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | (Required) The address space that is used the virtual network. You can supply more than one address space. | `list(string)` | `[]` | yes |
| <a name="input_vnet_dns_servers"></a> [vnet\_dns\_servers](#input\_vnet\_dns\_servers) | (Optional) List of IP addresses of DNS servers | `list(string)` | `[]` | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | (Required) The name of the virtual network. Changing this forces a new resource to be created. | `string` | `""` | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_mitocode_name"></a> [nat\_mitocode\_name](#output\_nat\_mitocode\_name) | (Required) The name of the NAT Gateway. |
| <a name="output_private_route_table_name"></a> [private\_route\_table\_name](#output\_private\_route\_table\_name) | (Required) The Private Route Table name |
| <a name="output_private_subnet_01_address_prefixes"></a> [private\_subnet\_01\_address\_prefixes](#output\_private\_subnet\_01\_address\_prefixes) | (Required) The address prefixes of the private subnet 01. |
| <a name="output_private_subnet_01_name"></a> [private\_subnet\_01\_name](#output\_private\_subnet\_01\_name) | (Required) The name of the private subnet 01. |
| <a name="output_private_subnet_02_address_prefixes"></a> [private\_subnet\_02\_address\_prefixes](#output\_private\_subnet\_02\_address\_prefixes) | (Required) The address prefixes of the private subnet 02. |
| <a name="output_private_subnet_02_name"></a> [private\_subnet\_02\_name](#output\_private\_subnet\_02\_name) | (Required) The name of the private subnet 02. |
| <a name="output_private_subnet_03_address_prefixes"></a> [private\_subnet\_03\_address\_prefixes](#output\_private\_subnet\_03\_address\_prefixes) | (Required) The address prefixes of the private subnet 03. |
| <a name="output_private_subnet_03_name"></a> [private\_subnet\_03\_name](#output\_private\_subnet\_03\_name) | (Required) The name of the private subnet 03. |
| <a name="output_public_route_table_name"></a> [public\_route\_table\_name](#output\_public\_route\_table\_name) | (Required) The Public Route Table name |
| <a name="output_public_subnet_01_address_prefixes"></a> [public\_subnet\_01\_address\_prefixes](#output\_public\_subnet\_01\_address\_prefixes) | (Required) The address prefixes of the public subnet 01. |
| <a name="output_public_subnet_01_name"></a> [public\_subnet\_01\_name](#output\_public\_subnet\_01\_name) | (Required) The name of the public subnet 01. |
| <a name="output_vnet_mitocode_address_space"></a> [vnet\_mitocode\_address\_space](#output\_vnet\_mitocode\_address\_space) | (Required) The virtual NetworkConfiguration address space. |
| <a name="output_vnet_mitocode_id"></a> [vnet\_mitocode\_id](#output\_vnet\_mitocode\_id) | (Optional) The virtual NetworkConfiguration ID. |
| <a name="output_vnet_mitocode_name"></a> [vnet\_mitocode\_name](#output\_vnet\_mitocode\_name) | (Required) The virtual NetworkConfiguration name. |
