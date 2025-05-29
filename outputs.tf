output "vm_id" {
    description = "The name of the virtual machine"
    value       = azurerm_linux_virtual_machine.vm.id
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}


output "vnet_name" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = { for subnet in azurerm_subnet.subnet : subnet.name => subnet.id }
}

output "networking_complete" {
  description = "A message indicating that the networking resources have been created"
  value       = true
}



