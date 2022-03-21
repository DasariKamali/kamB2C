export AZURE_SERVICEBUS_NAMESPACE=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_NAMESPACE)
export AZURE_SERVICEBUS_QUEUE_NAME=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_QUEUE_NAME)
export AZURE_SERVICEBUS_SUBSCRIPTION_ID=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_SUBSCRIPTION_ID)
export AZURE_SERVICEBUS_RESOURCE_GROUP=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_RESOURCE_GROUP)
export AZURE_SERVICE_PRINCIPAL_CLIENT_ID=$(terraform -chdir=./terraform output -raw AZURE_SERVICE_PRINCIPAL_CLIENT_ID)
export AZURE_SERVICE_PRINCIPAL_CLIENT_SECRET=$(terraform -chdir=./terraform output -raw AZURE_SERVICE_PRINCIPAL_CLIENT_SECRET)
export AZURE_SERVICE_PRINCIPAL_TENANT_ID=$(terraform -chdir=./terraform output -raw AZURE_SERVICE_PRINCIPAL_TENANT_ID)

echo AZURE_SERVICEBUS_NAMESPACE=$AZURE_SERVICEBUS_NAMESPACE
echo AZURE_SERVICEBUS_QUEUE_NAME=$AZURE_SERVICEBUS_QUEUE_NAME
echo AZURE_SERVICEBUS_SUBSCRIPTION_ID=$AZURE_SERVICEBUS_SUBSCRIPTION_ID
echo AZURE_SERVICEBUS_RESOURCE_GROUP=$AZURE_SERVICEBUS_RESOURCE_GROUP
echo AZURE_SERVICE_PRINCIPAL_CLIENT_ID=$AZURE_SERVICE_PRINCIPAL_CLIENT_ID
echo AZURE_SERVICE_PRINCIPAL_CLIENT_SECRET=$AZURE_SERVICE_PRINCIPAL_CLIENT_SECRET
echo AZURE_SERVICE_PRINCIPAL_TENANT_ID=$AZURE_SERVICE_PRINCIPAL_TENANT_ID
