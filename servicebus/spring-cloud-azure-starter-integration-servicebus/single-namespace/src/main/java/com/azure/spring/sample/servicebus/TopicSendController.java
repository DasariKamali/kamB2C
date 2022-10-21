// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

package com.azure.spring.sample.servicebus;

import com.azure.spring.integration.core.handler.DefaultMessageHandler;
import com.azure.spring.cloud.service.servicebus.properties.ServiceBusEntityType;
import com.azure.spring.messaging.servicebus.core.ServiceBusTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.integration.annotation.MessagingGateway;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.messaging.MessageChannel;
import org.springframework.messaging.MessageHandler;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TopicSendController {

    private static final Logger LOGGER = LoggerFactory.getLogger(TopicSendController.class);
    private static final String OUTPUT_CHANNEL = "topic.output";
    private static final String TOPIC_NAME = "topic1";

    @Autowired
    TopicOutboundGateway messagingGateway;

    /**
     * Posts a message to a Service Bus Topic
     */
    @PostMapping("/topics")
    public String send(@RequestParam("message") String message) {
        this.messagingGateway.send(message);
        return message;
    }

    @Bean
    @ServiceActivator(inputChannel = OUTPUT_CHANNEL)
    public MessageHandler topicMessageSender(ServiceBusTemplate serviceBusTemplate) {
        serviceBusTemplate.setDefaultEntityType(ServiceBusEntityType.TOPIC);
        DefaultMessageHandler handler = new DefaultMessageHandler(TOPIC_NAME, serviceBusTemplate);
        handler.setSendCallback((t, ex) -> {
            if (ex == null) {
                LOGGER.info("Message was sent successfully.");
            } else {
                LOGGER.error("There was an error sending the message.", ex);
            }
        });
        return handler;
    }

    /**
     * Message gateway binding with {@link MessageHandler}
     * via {@link MessageChannel} has name {@value OUTPUT_CHANNEL}
     */
    @MessagingGateway(defaultRequestChannel = OUTPUT_CHANNEL)
    public interface TopicOutboundGateway {
        void send(String text);
    }
}
