package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    @Autowired
    private JavaMailSender mailSender;

    public void sendUserMessageToOwner(String name, String userEmail, String subject, String message) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo("railbooking389@gmail.com"); // Owner's email
        mailMessage.setSubject("New Contact Message: " + subject);
        mailMessage.setText(
                "You received a message from your website contact form:\n\n" +
                "Name: " + name + "\n" +
                "Email: " + userEmail + "\n\n" +
                "Message:\n" + message
        );
        mailMessage.setReplyTo(userEmail); // Makes it easy to reply
        mailSender.send(mailMessage);
    }
}

