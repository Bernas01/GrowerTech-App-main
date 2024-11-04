package com.example.growertech.Service;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;

import com.example.growertech.Config.MessageConfig;

@Service
public class MessageConsumer {
    @RabbitListener(queues = MessageConfig.QUEUE_NAME)
    public void receiveMessage(String message) {
        System.out.println("Received message: " + message);
    }
}
