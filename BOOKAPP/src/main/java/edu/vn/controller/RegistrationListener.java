//package edu.vn.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.ApplicationListener;
//import org.springframework.context.MessageSource;
//import org.springframework.mail.SimpleMailMessage;
//import org.springframework.mail.javamail.JavaMailSender;
//
//import edu.vn.models.Users;
//import edu.vn.utils.OnRegistrationCompleteEvent;
//
////@Component
//public class RegistrationListener implements ApplicationListener<OnRegistrationCompleteEvent> {
//  @Autowired
//  private MessageSource messages;
//  
//  @Autowired
//  private JavaMailSender mailSender;
//  
//  private void confirmRegistration(OnRegistrationCompleteEvent event) {
//    Users user = event.getUsers();
//    String recipientAddress = user.getEmail();
//    String subject = "Registration Confirmation";
//    String confirmationUrl 
//      = event.getAppUrl() + "/regitrationConfirm.html?token=123";
//    String message = messages.getMessage("message.regSucc", null, event.getLocale());
//     
//    SimpleMailMessage email = new SimpleMailMessage();
//    email.setTo(recipientAddress);
//    email.setSubject(subject);
//    email.setText(message + " rn" + "http://localhost:8080" + confirmationUrl);
//    mailSender.send(email);
//}
//
//  @Override
//  public void onApplicationEvent(OnRegistrationCompleteEvent event) {
//    this.confirmRegistration(event);
//  }
//
//}
