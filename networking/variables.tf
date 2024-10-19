##############################################################################################
#############################        Global Variables  #######################################
##############################################################################################
variable "rg_name" {
  description = "(Required) Resource group name"
  type        = string
  default     = ""
}

variable "rg_location" {
  description = "(Required) Resource group location"
  type        = string
  default     = ""
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Azure services, the tag is important for the costs for environment"
  type        = map(any)
  default     = {}
}
##############################################################################################
#############################        Virtual Net      ########################################
##############################################################################################
variable "vnet_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "vnet_address_space" {
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
  type        = list(string)
  default     = []
}

variable "vnet_dns_servers" {
  description = "(Optional) List of IP addresses of DNS servers"
  type        = list(string)
  default     = []
}
##############################################################################################
#############################        Subnets          ########################################
##############################################################################################
#Public Subnet
variable "public_subnet_name_01" {
  description = "(Required) The name of the public subnet. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "public_subnet_address_prefixes_01" {
  description = "(Required) The address public prefixes to use for the subnet and it will be added to Nat-gateway."
  type        = list(string)
  default     = []
}

#Private Subnets
variable "private_subnet_name_01" {
  description = "(Required) The name of the private subnet. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "private_subnet_address_prefixes_01" {
  description = "(Required) The address private prefixes to use for the subnet and it will be added to AKS"
  type        = list(string)
  default     = []
}

variable "private_subnet_name_02" {
  description = "(Required) The name of the private subnet. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "private_subnet_address_prefixes_02" {
  description = "(Required) The address private prefixes to use for the subnet and it will be added to Azure SQL"
  type        = list(string)
  default     = []
}

variable "private_subnet_name_03" {
  description = "(Required) The name of the private subnet. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "private_subnet_address_prefixes_03" {
  description = "(Required) The address private prefixes to use for the subnet and it will be added for any azure services"
  type        = list(string)
  default     = []
}
##############################################################################################
#############################    Security Group          ########################################
##############################################################################################
variable "sg_azure_public_subnet_01" {
  description = "(Optional) The Network Security Group to associate with the subnet. (Referenced by id, ie. azurerm_network_security_group.example.id)"
  type        = string
  default     = ""
}
##############################################################################################
#############################    NAT GATEWAY          ########################################
##############################################################################################
variable "nat_name" {
  description = "(Required) Specifies the name of the NAT Gateway. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}

variable "nat_sku" {
  description = "(Optional) The SKU which should be used. At this time the only supported value is Standard. Defaults to Standard."
  type        = string
  default     = ""
}

variable "nat_gateway_association_public_ip_address_id" {
  description = "(Required) nat_gateway_association_public_ip_address_id is associate with module azure_public_ip"
  type        = string
  default     = ""
}
##############################################################################################
#############################    Route Tables         ########################################
##############################################################################################
#Public Route
variable "public_route_table_name" {
  description = "(Required) The name of the route table. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}
variable "public_route_table_route_name" {
  description = "(Required) The name of the route."
  type        = string
  default     = ""
}

variable "public_route_table_route_public_ip_prefix" {
  description = "public_route_table_route_public_ip_prefix is associate with module azure_public_ip"
  type        = string
  default     = ""
}
variable "public_route_table_route_next_hop_type" {
  description = "(Required) The destination to which the route applies. Can be CIDR (such as 10.1.0.0/16) or Azure Service Tag (such as ApiManagement, AzureBackup or AzureMonitor) format."
  type        = string
  default     = ""
}
#Private Route
variable "private_route_table_name" {
  description = "(Required) The type of Azure hop the packet should be sent to. Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None."
  type        = string
  default     = ""
}