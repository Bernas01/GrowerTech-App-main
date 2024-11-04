package com.example.growertech.Config;

import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MessageConfig {
    public static final String QUEUE_NAME = "growertechQueue";

    @Bean
    public Queue queue() {
        return new Queue(QUEUE_NAME, false);
    }
}