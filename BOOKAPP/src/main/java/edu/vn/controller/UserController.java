package edu.vn.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.vn.models.Users;
import edu.vn.services.UserService;
import edu.vn.utils.OnRegistrationCompleteEvent;

@Controller
public class UserController {
  @Autowired
  private UserService userService;
  @Autowired
  private ApplicationEventPublisher eventPublisher;
  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String registerUser(@ModelAttribute("user") Users user,
      RedirectAttributes redirectAttributes, WebRequest webRequest,
      Errors errors, Model model) {
    Users userCheck = userService.save(user);
    if (userCheck != null) {
      eventPublisher.publishEvent(new OnRegistrationCompleteEvent(webRequest.getLocale(), userCheck));
      model.addAttribute("user", userCheck);
      model.addAttribute("inform","Đăng kí thành công. Kiểm tra trong hòm thư của bạn nhé !");
    } else {
      model.addAttribute("informError", "Có lỗi xảy ra :((");
    }
    return "login";
  }
  @RequestMapping(value="/myProfile",method = RequestMethod.GET)
  public String myProfile(Model model, Principal principal) {
    String currentName = principal.getName();
    Users user = userService.finByUserName(currentName);
    model.addAttribute("currentUser", user);
    return "myprofile";
  }
  
  @RequestMapping(value="/registerConfirm", method= RequestMethod.GET)
  public String registerConfirm(@RequestParam("token") String token,Model model) {
    System.out.println(token);
    userService.activeUser(token);
    model.addAttribute("inform","Register Success");
    return "login";
  }
}
