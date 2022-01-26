export AZURE_EVENTHUBS_CONNECTION_STRING=$(terraform -chdir=./terraform output -raw AZURE_EVENTHUBS_CONNECTION_STRING)
export EVENTHUBS_KAFKA=$(terraform -chdir=./terraform output -raw EVENTHUBS_KAFKA)

echo AZURE_EVENTHUBS_CONNECTION_STRING=$AZURE_EVENTHUBS_CONNECTION_STRING
echo EVENTHUBS_KAFKA=$EVENTHUBS_KAFKA
