export AZURE_SERVICEBUS_NAMESPACE_01=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_NAMESPACE_01)
export AZURE_SERVICEBUS_NAMESPACE_02=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_NAMESPACE_02)
export AZURE_SERVICEBUS_TOPIC_NAME=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_TOPIC_NAME)
export AZURE_SERVICEBUS_TOPIC_SUBSCRIPTION_NAME=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_TOPIC_SUBSCRIPTION_NAME)
export AZURE_SERVICEBUS_QUEUE_NAME=$(terraform -chdir=./terraform output -raw AZURE_SERVICEBUS_QUEUE_NAME)

