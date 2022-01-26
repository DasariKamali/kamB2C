$env:AZURE_SERVICEBUS_NAMESPACE=$(terraform -chdir=terraform output -raw AZURE_SERVICEBUS_NAMESPACE)
$env:AZURE_SERVICEBUS_TOPIC_NAME=$(terraform -chdir=terraform output -raw AZURE_SERVICEBUS_TOPIC_NAME)
$env:AZURE_SERVICEBUS_TOPIC_SUBSCRIPTION_NAME=$(terraform -chdir=terraform output -raw AZURE_SERVICEBUS_TOPIC_SUBSCRIPTION_NAME)

echo AZURE_SERVICEBUS_NAMESPACE=$env:AZURE_SERVICEBUS_NAMESPACE
echo AZURE_SERVICEBUS_TOPIC_NAME=$env:AZURE_SERVICEBUS_TOPIC_NAME
echo AZURE_SERVICEBUS_TOPIC_SUBSCRIPTION_NAME=$env:AZURE_SERVICEBUS_TOPIC_SUBSCRIPTION_NAME

