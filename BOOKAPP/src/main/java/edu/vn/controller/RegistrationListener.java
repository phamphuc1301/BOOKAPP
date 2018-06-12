package edu.vn.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import edu.vn.models.TokenUserRegister;
import edu.vn.models.Users;
import edu.vn.services.TokenUserServices;
import edu.vn.utils.OnRegistrationCompleteEvent;

@Component
public class RegistrationListener implements ApplicationListener<OnRegistrationCompleteEvent> {
  
  @Autowired
  private JavaMailSender mailSender;
  @Autowired
  private TokenUserServices tokenUserServices;
  private void confirmRegistration(OnRegistrationCompleteEvent event) {
    Users user = event.getUsers();
    String token = generatorToken();
    TokenUserRegister tokenUser = new TokenUserRegister(token, user);
    String ligal = tokenUserServices.save(tokenUser);
    if("SUCCESS".equals(ligal)) {
      String subject = "Registration Confirmation";
      SimpleMailMessage email = new SimpleMailMessage();
      email.setTo(user.getEmail());
      email.setSubject(subject);
      email.setText("http://localhost:8080/BOOKAPP/registerConfirm?token=" +token);
      mailSender.send(email);
    }
    else {
      System.out.println("Error in confirmRegistration");
    }
}

  @Override
  public void onApplicationEvent(OnRegistrationCompleteEvent event) {
    this.confirmRegistration(event);
  }

  public String generatorToken() {
    
    int leftLimit = 97; // letter 'a'
    int rightLimit = 122; // letter 'z'
    int targetStringLength = 10;
    Random random = new Random();
    StringBuilder buffer = new StringBuilder(targetStringLength);
    for (int i = 0; i < targetStringLength; i++) {
        int randomLimitedInt = leftLimit + (int) 
          (random.nextFloat() * (rightLimit - leftLimit + 1));
        buffer.append((char) randomLimitedInt);
    }
    String generatedString = buffer.toString();
    System.out.println(generatedString);
    return generatedString;
}
}
