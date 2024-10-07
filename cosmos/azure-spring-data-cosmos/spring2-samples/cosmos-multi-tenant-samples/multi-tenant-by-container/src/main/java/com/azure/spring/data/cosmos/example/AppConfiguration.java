// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
package com.azure.spring.data.cosmos.example;

import com.azure.cosmos.CosmosAsyncClient;
import com.azure.cosmos.CosmosClientBuilder;
import com.azure.cosmos.DirectConnectionConfig;
import com.azure.cosmos.models.ThroughputProperties;
import com.azure.spring.data.cosmos.config.AbstractCosmosConfiguration;
import com.azure.spring.data.cosmos.config.CosmosConfig;
import com.azure.spring.data.cosmos.core.ResponseDiagnostics;
import com.azure.spring.data.cosmos.core.ResponseDiagnosticsProcessor;
import com.azure.spring.data.cosmos.example.tenant.MultiTenantContainerCosmosFactory;
import com.azure.spring.data.cosmos.repository.config.EnableCosmosRepositories;
import com.azure.spring.data.cosmos.repository.config.EnableReactiveCosmosRepositories;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.lang.Nullable;

@Configuration
@EnableConfigurationProperties(CosmosProperties.class)
@EnableCosmosRepositories
@EnableReactiveCosmosRepositories
public class AppConfiguration extends AbstractCosmosConfiguration {
    private static final Logger logger = LoggerFactory.getLogger(AppConfiguration.class);
    private final CosmosProperties properties;
    private final Environment env;

    public AppConfiguration(CosmosProperties properties, Environment env){
        this.env = env;
        this.properties = properties;
    }

    @Bean
    public CosmosClientBuilder cosmosClientBuilder() {
        DirectConnectionConfig directConnectionConfig = DirectConnectionConfig.getDefaultConfig();
        return new CosmosClientBuilder()
                .endpoint(properties.getUri())
                .key(properties.getKey())
                .directMode(directConnectionConfig);
    }

    @Bean
    public CosmosConfig cosmosConfig() {
        return CosmosConfig.builder()
                           .responseDiagnosticsProcessor(new ResponseDiagnosticsProcessorImplementation())
                           .enableQueryMetrics(properties.isQueryMetricsEnabled())
                           .build();
    }

    @Bean
    public MultiTenantContainerCosmosFactory cosmosFactory(CosmosAsyncClient cosmosAsyncClient) {
        return new MultiTenantContainerCosmosFactory(cosmosAsyncClient, getDatabaseName(), properties);
    }

    @Override
    protected String getDatabaseName() {
        String databaseName;
        databaseName =  properties.getDatabaseName();
        return databaseName;
    }

    private static class ResponseDiagnosticsProcessorImplementation implements ResponseDiagnosticsProcessor {

        @Override
        public void processResponseDiagnostics(@Nullable ResponseDiagnostics responseDiagnostics) {
            //uncomment this line to see the full response diagnostics
            //logger.info("Response Diagnostics {}", responseDiagnostics);
        }
    }
}
