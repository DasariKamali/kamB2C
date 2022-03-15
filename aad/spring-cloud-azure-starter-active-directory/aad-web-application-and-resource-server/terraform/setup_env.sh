export TENANT_ID=$(terraform output -raw TENANT_ID)
export CLIENT_1_CLIENT_ID=$(terraform output -raw CLIENT_1_CLIENT_ID)
export RESOURCE_SERVER_1_CLIENT_ID=$(terraform output -raw RESOURCE_SERVER_1_CLIENT_ID)
export RESOURCE_SERVER_2_CLIENT_ID=$(terraform output -raw RESOURCE_SERVER_2_CLIENT_ID)
export CLIENT_1_CLIENT_SECRET=$(terraform output -raw CLIENT_1_CLIENT_SECRET)
export RESOURCE_SERVER_1_CLIENT_SECRET=$(terraform output -raw RESOURCE_SERVER_1_CLIENT_SECRET)

echo TENANT_ID=$TENANT_ID
echo CLIENT_1_CLIENT_ID=$CLIENT_1_CLIENT_ID
echo RESOURCE_SERVER_1_CLIENT_ID=$RESOURCE_SERVER_1_CLIENT_ID
echo RESOURCE_SERVER_2_CLIENT_ID=$RESOURCE_SERVER_2_CLIENT_ID
echo CLIENT_1_CLIENT_SECRET=$CLIENT_1_CLIENT_SECRET
echo RESOURCE_SERVER_1_CLIENT_SECRET=$RESOURCE_SERVER_1_CLIENT_SECRET
