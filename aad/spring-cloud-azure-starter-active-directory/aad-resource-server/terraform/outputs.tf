output "AZURE_TENANT_ID" {
  value = data.azuread_client_config.current.tenant_id
}

output "WEB_API_B_CLIENT_ID" {
  value = azuread_application.webapiB.application_id
}

output "USER_PASSWORD" {
  value     = azuread_user.user.password
  sensitive = true
}

output "USER_NAME" {
  value = azuread_user.user.user_principal_name
}