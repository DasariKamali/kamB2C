$env:AZURE_EVENTHUBS_NAMESPACE=$(terraform -chdir=terraform output -raw AZURE_EVENTHUBS_NAMESPACE)
$env:AZURE_STORAGE_CONTAINER_NAME=$(terraform -chdir=terraform output -raw AZURE_STORAGE_CONTAINER_NAME)
$env:AZURE_STORAGE_ACCOUNT_NAME=$(terraform -chdir=terraform output -raw AZURE_STORAGE_ACCOUNT_NAME)
$env:AZURE_EVENTHUB_NAME=$(terraform -chdir=terraform output -raw AZURE_EVENTHUB_NAME)
$env:AZURE_EVENTHUB_CONSUMER_GROUP=$(terraform -chdir=terraform output -raw AZURE_EVENTHUB_CONSUMER_GROUP)


