$env:AZURE_EVENTHUBS_CONNECTION_STRING=$(terraform -chdir=terraform output -raw AZURE_EVENTHUBS_CONNECTION_STRING)
$env:EVENTHUBS_KAFKA=$(terraform -chdir=terraform output -raw EVENTHUBS_KAFKA)