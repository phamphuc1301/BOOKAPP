package edu.vn.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import edu.vn.services.UserService;

@Controller
public class UserController {
  @Autowired
  private UserService userService;
  
  @GetMapping(value = "/logout")
  public String logout(HttpSession httpSession) throws IOException, ParseException {
    httpSession.removeAttribute("currentUser");
    return "login";
  }
}
