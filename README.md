[![CodeQL](https://github.com/Azure-Samples/azure-spring-boot-samples/actions/workflows/codeql-analysis.yml/badge.svg)](https://github.com/Azure-Samples/azure-spring-boot-samples/actions/workflows/codeql-analysis.yml) [![CI](https://github.com/Azure-Samples/azure-spring-boot-samples/actions/workflows/ci.yml/badge.svg)](https://github.com/Azure-Samples/azure-spring-boot-samples/actions/workflows/ci.yml) [![Markdown Links Check](https://github.com/Azure-Samples/azure-spring-boot-samples/actions/workflows/markdown-link-check.yml/badge.svg)](https://github.com/Azure-Samples/azure-spring-boot-samples/actions/workflows/markdown-link-check.yml) 

# Spring Cloud Azure Samples
- This is a sample project for demonstration purposes.   
- The project demonstrates how to use [Spring Cloud Azure](https://microsoft.github.io/spring-cloud-azure/current/reference/html/index.html) to develop applications.    
- The sample project contains 42 samples, and it still grows.    
- These samples are grouped by Azure services and [Spring Cloud Azure libraries](https://github.com/Azure/azure-sdk-for-java/tree/main/sdk/spring).    

    > For example: [Use Spring Integration with single Azure Service Bus namespace](servicebus/spring-cloud-azure-starter-integration-servicebus/single-namespace), it located in the path `/servicebus/spring-cloud-azure-starter-integration-servicebus`.
    >
    >  **servicebus**: The Azure service that the sample integrated with.
    >
    > **spring-cloud-azure-starter-integration-servicebus**: The dependency that the sample depends on.

## Branch Policy
We use `main` branch as the develop branch while setting the default branch as the latest released branch.

| Branch Name               | Default Branch | Branch type    |
|---------------------------|----------------|----------------|
| main                      | false          | develop branch |
| spring-cloud-azure_v6.0.0-beta.2 | true           | release branch |

## Current Branch Supported Versions
- [spring-boot-dependencies:3.0.0-M4](https://repo.spring.io/artifactory/milestone/org/springframework/boot/spring-boot-dependencies/3.0.0-M4/spring-boot-dependencies-3.0.0-M4.pom).
- [spring-cloud-dependencies:2022.0.0-M4](https://repo.spring.io/ui/native/milestone/org/springframework/cloud/spring-cloud-dependencies/2022.0.0-M4/spring-cloud-dependencies-2022.0.0-M4.pom).

## All Samples in This Repo

| Azure Service     | Spring Cloud Azure Starter Dependency                               | Sample Project                                                                                                                                                                                                                                                 |
|-------------------|---------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| AAD               | [spring-cloud-azure-starter-active-directory-b2c:6.0.0-beta.2]      | [aad-b2c-resource-server](aad/spring-cloud-azure-starter-active-directory-b2c/aad-b2c-resource-server)                                                                                                                                                         |
| AAD               | [spring-cloud-azure-starter-active-directory-b2c:6.0.0-beta.2]      | [aad-b2c-web-application](aad/spring-cloud-azure-starter-active-directory-b2c/aad-b2c-web-application)                                                                                                                                                         |
| AAD               | [spring-cloud-azure-starter-active-directory:6.0.0-beta.2]          | [aad-resource-server-by-filter-stateless](aad/spring-cloud-azure-starter-active-directory/aad-resource-server-by-filter-stateless)                                                                                                                             |
| AAD               | [spring-cloud-azure-starter-active-directory:6.0.0-beta.2]          | [aad-resource-server-by-filter](aad/spring-cloud-azure-starter-active-directory/aad-resource-server-by-filter)                                                                                                                                                 |
| AAD               | [spring-cloud-azure-starter-active-directory:6.0.0-beta.2]          | [web-client-access-resource-server](aad/spring-cloud-azure-starter-active-directory/web-client-access-resource-server)                                                                                                                                         |
| AAD               | [spring-cloud-azure-starter-active-directory:6.0.0-beta.2]          | [aad-webapp-resource-server](aad/spring-cloud-azure-starter-active-directory/aad-web-application-and-resource-server)                                                                                                                                          |
| App Configuration | [spring-cloud-azure-starter-appconfiguration:6.0.0-beta.2]          | [appconfiguration-client](appconfiguration/spring-cloud-azure-starter-appconfiguration/appconfiguration-client)                                                                                                                                                |
| Cache             | N/A                                                                 | [azure-spring-cloud-sample-cache](cache/spring-cloud-azure-starter/spring-cloud-azure-sample-cache)                                                                                                                                                            |
| Cloud Foundry     | N/A                                                                 | [azure-cloud-foundry-service-sample](cloudfoundry/azure-cloud-foundry-service-sample)                                                                                                                                                                          |
| Cosmos DB         | [spring-cloud-azure-starter-cosmos:6.0.0-beta.2]                    | [spring-cloud-azure-cosmos-sample](cosmos/spring-cloud-azure-starter-cosmos/spring-cloud-azure-cosmos-sample)                                                                                                                                                  |
| Event Hubs        | N/A                                                                 | [spring-cloud-azure-sample-eventhubs-kafka](eventhubs/spring-cloud-azure-starter/spring-cloud-azure-sample-eventhubs-kafka)                                                                                                                                    |
| Event Hubs        | [spring-cloud-azure-starter-integration-eventhubs:6.0.0-beta.2]     | [eventhubs-integration](eventhubs/spring-cloud-azure-starter-integration-eventhubs/eventhubs-integration)                                                                                                                                                      |
| Event Hubs        | [spring-cloud-azure-stream-binder-eventhubs:6.0.0-beta.2]           | [eventhubs-binder](eventhubs/spring-cloud-azure-stream-binder-eventhubs/eventhubs-binder)                                                                                                                                                                      |
| Event Hubs        | [spring-cloud-azure-stream-binder-eventhubs:6.0.0-beta.2]           | [eventhubs-multibinders](eventhubs/spring-cloud-azure-stream-binder-eventhubs/eventhubs-multibinders)                                                                                                                                                          |
| Event Hubs        | [spring-cloud-azure-starter-eventhubs:6.0.0-beta.2]                 | [eventhubs-client](eventhubs/spring-cloud-azure-starter-eventhubs/eventhubs-client)                                                                                                                                                                            |
| Key Vault         | [spring-cloud-azure-starter-keyvault-secrets:6.0.0-beta.2]          | [property-source](keyvault/spring-cloud-azure-starter-keyvault-secrets/property-source)                                                                                                                                                                        |
| Key Vault         | [spring-cloud-azure-starter-keyvault-secrets:6.0.0-beta.2]          | [secret-client](keyvault/spring-cloud-azure-starter-keyvault-secrets/secret-client)                                                                                                                                                                            |
| Service Bus       | [spring-cloud-azure-starter-servicebus-jms:6.0.0-beta.2]            | [servicebus-jms-queue](servicebus/spring-cloud-azure-starter-servicebus-jms/servicebus-jms-queue)                                                                                                                                                              |
| Service Bus       | [spring-cloud-azure-starter-servicebus-jms:6.0.0-beta.2]            | [servicebus-jms-topic](servicebus/spring-cloud-azure-starter-servicebus-jms/servicebus-jms-topic)                                                                                                                                                              |
| Service Bus       | [spring-cloud-azure-starter-integration-servicebus:6.0.0-beta.2]    | [single-namespace](servicebus/spring-cloud-azure-starter-integration-servicebus/single-namespace)                                                                                                                                                              |
| Service Bus       | [spring-cloud-azure-starter-integration-servicebus:6.0.0-beta.2]    | [multiple-namespaces](servicebus/spring-cloud-azure-starter-integration-servicebus/multiple-namespaces)                                                                                                                                                        |
| Service Bus       | [spring-cloud-azure-stream-binder-servicebus:6.0.0-beta.2]          | [servicebus-queue-binder](servicebus/spring-cloud-azure-stream-binder-servicebus/servicebus-queue-binder)                                                                                                                                                      |
| Service Bus       | [spring-cloud-azure-stream-binder-servicebus:6.0.0-beta.2]          | [servicebus-queue-multibinders](servicebus/spring-cloud-azure-stream-binder-servicebus/servicebus-multibinders)                                                                                                                                                |
| Service Bus       | [spring-cloud-azure-stream-binder-servicebus:6.0.0-beta.2]          | [servicebus-topic-binder](servicebus/spring-cloud-azure-stream-binder-servicebus/servicebus-topic-binder)                                                                                                                                                      |
| Service Bus       | [spring-cloud-azure-stream-binder-servicebus:6.0.0-beta.2]          | [servicebus-queue-binder-arm](servicebus/spring-cloud-azure-stream-binder-servicebus/servicebus-queue-binder-arm)                                                                                                                                              |
| Storage           | [spring-cloud-azure-starter-storage-blob:6.0.0-beta.2]              | [storage-blob-sample](storage/spring-cloud-azure-starter-storage-blob/storage-blob-sample)                                                                                                                                                                     |
| Storage           | [spring-cloud-azure-starter-storage-file-share:6.0.0-beta.2]        | [storage-file-sample](storage/spring-cloud-azure-starter-storage-file-share/storage-file-sample)                                                                                                                                                               |
| Storage           | [spring-cloud-azure-starter-storage-queue:6.0.0-beta.2]             | [storage-queue-client](storage/spring-cloud-azure-starter-storage-queue/storage-queue-client)                                                                                                                                                                  |
| Storage           | [spring-cloud-azure-starter-integration-storage-queue:6.0.0-beta.2] | [storage-queue-integration](storage/spring-cloud-azure-starter-integration-storage-queue/storage-queue-integration)                                                                                                                                            |
| Storage           | [spring-cloud-azure-starter-integration-storage-queue:6.0.0-beta.2] | [storage-queue-operation](storage/spring-cloud-azure-starter-integration-storage-queue/storage-queue-operation)                                                                                                                                                |

## Running Samples With Terraform
With [terraform](https://www.terraform.io/) scripts and [DefaultAzureCredential](https://microsoft.github.io/spring-cloud-azure/current/reference/html/index.html#defaultazurecredential), most samples in the project can be run with the same 4 steps below:

```shell
# Step1 Initialize Terraform
terraform -chdir=./terraform init

# Step2 Apply your Terraform Configuration
terraform -chdir=./terraform apply -auto-approve

# Step3 Export Environment Valuables
source ./terraform/setup_env.sh

# Step4 Run With Maven
mvn clean spring-boot:run
```
It supports both Bash environment and [PowerShell](https://docs.microsoft.com/en-us/powershell/) environment.   
Please refer to [README.md](servicebus/spring-cloud-azure-starter-integration-servicebus/single-namespace/README.md) under each sample for detailed information.

[spring-cloud-azure-starter-keyvault-secrets:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-keyvault-secrets/6.0.0-beta.2/jar
[spring-cloud-azure-stream-binder-eventhubs:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-stream-binder-eventhubs/6.0.0-beta.2/jar
[spring-cloud-azure-starter-eventhubs:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-eventhubs/6.0.0-beta.2/jar
[spring-cloud-azure-starter-integration-eventhubs:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-integration-eventhubs/6.0.0-beta.2/jar
[spring-cloud-azure-stream-binder-servicebus:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-stream-binder-servicebus/6.0.0-beta.2/jar
[spring-cloud-azure-starter-active-directory:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-active-directory/6.0.0-beta.2/jar
[spring-cloud-azure-starter-active-directory-b2c:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-active-directory-b2c/6.0.0-beta.2/jar
[spring-cloud-azure-starter-cosmos:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-cosmos/6.0.0-beta.2/jar
[spring-cloud-azure-starter-servicebus-jms:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-servicebus-jms/6.0.0-beta.2/jar
[spring-cloud-azure-starter-integration-servicebus:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-integration-servicebus/6.0.0-beta.2/jar
[spring-cloud-azure-starter-integration-storage-queue:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-integration-storage-queue/6.0.0-beta.2/jar
[spring-cloud-azure-starter-storage-file-share:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-storage-file-share/6.0.0-beta.2/jar
[spring-cloud-azure-starter-storage-queue:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-storage-queue/6.0.0-beta.2/jar
[spring-cloud-azure-starter-storage-blob:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-storage-blob/6.0.0-beta.2/jar
[spring-cloud-azure-starter-appconfiguration:6.0.0-beta.2]: https://search.maven.org/artifact/com.azure.spring/spring-cloud-azure-starter-appconfiguration/6.0.0-beta.2/jar
