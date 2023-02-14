output "SERVICEBUS_FULL_QUALIFIED_DOMAIN_NAME" {
  value       = azurerm_servicebus_namespace.servicebus_namespace.name
  description = "The name of Service Bus namespace."
}

output "PRICING_TIER" {
  value       = var.pricing_tier
  description = "The pricing tier of Service Bus."
}

output "RESOURCE_GROUP_NAME" {
  value = azurerm_resource_group.main.name
  description = "The resource group name."
}
