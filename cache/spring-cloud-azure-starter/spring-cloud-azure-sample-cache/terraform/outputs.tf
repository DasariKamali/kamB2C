output "AZURE_SUBSCRIPTION_ID" {
  value       = var.azure_subscription_id
  description = "The subscription ID of the resource."
}

output "AZURE_TENANT_ID" {
  value       = var.azure_tenant_id
  description = "The tenant ID of the resource."
}

output "AZURE_RESOURCE_GROUP" {
  value       = azurerm_redis_cache.redis.resource_group_name
  description = "The resource group name of the resource."
}

output "AZURE_CACHE_REDIS_DNS_NAME" {
  value       = azurerm_redis_cache.redis.name
  description = "The DNS name of the Redis instance."
}
